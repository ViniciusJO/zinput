const std = @import("std");
const input = @import("libinput.zig");

pub fn Vec2(T: type) type { return struct { x: T, y: T }; }
pub fn Vec3(T: type) type { return struct { x: T, y: T, z: T }; }
pub fn Vec4(T: type) type { return struct { x: T, y: T, z: T, w: T }; }

const zinput = @This();

// libinput: input.libinput,
// device: input.libinput_device,
// device_group: input.libinput_device_group,
// seat: input.libinput_seat,
// tablet_tool: input.libinput_tablet_tool,

internals: struct {
    udev: *input.udev,
    context: *input.libinput,
    // fd: std.os.linux.fd_t,
    poll: std.os.linux.pollfd,
},

pub const InputError = error {
    UdevInit,
    ContextInit,
    SeatAssignFailed,
} || Event.EventError;

extern fn udev_new() ?*anyopaque;
// const libinput = @cImport({
//     @cInclude("libudev.h");
// });

pub fn init() InputError!zinput {
    var self: zinput = undefined;

    self.internals.udev = @ptrCast(udev_new() orelse unreachable); //return InputError.UdevInit;
    errdefer _ = input.udev_unref(self.internals.udev);

    const li_interface = input.libinput_interface{
        .open_restricted = struct  { pub fn open(path: [*c]const u8, flags: c_int, _: ?*anyopaque) callconv(.c) c_int { return @intCast(std.os.linux.open(path, @bitCast(flags), 0)); } }.open,
        .close_restricted = struct { pub fn close(fd: c_int, _: ?*anyopaque) callconv(.c) void { _ = std.os.linux.close(fd); } }.close,
    };
    self.internals.context = input.libinput_udev_create_context(@ptrCast(&li_interface), null, self.internals.udev) orelse return InputError.ContextInit;
    errdefer _ = input.libinput_unref(self.internals.context);

    const seat = "seat0";
    if(input.libinput_udev_assign_seat(self.internals.context, seat) != 0)
        return InputError.SeatAssignFailed;

    self.internals.poll.fd = @intCast(input.libinput_get_fd(self.internals.context));
    self.internals.poll.events = std.os.linux.POLL.IN;

    return self;
}

pub const InputRunError = error {
    PollFailed,
} || InputError;

// pub const InputPollError = error {
// } || InputRunError;
//
// pub fn fetch_events(self: *const Self) void {
//     _ = input.libinput_dispatch(self.internals.context);
// }
//
// pub fn poll_events(self: *const Self) InputPollError!void {
//     var pollfd = [_]std.os.linux.pollfd{ self.internals.poll };
//     _ = std.posix.poll(&pollfd, -1) catch return InputRunError.PollFailed;
//     self.fetch_events();
// }
//
// pub fn next_event_block(self: *const Self) InputPollError!Event {
//     return try self.next_event_optional() orelse {
//         try self.poll_events();
//         return try self.next_event_optional() orelse InputPollError.NoEvent;
//     };
// }
//
// pub fn next_event_optional(self: *const Self) InputPollError!?Event {
//     const event = input.libinput_get_event(self.internals.context) orelse return null;
//     return try Event.init(event);
// }
//
// pub fn next_event_optional_block(self: *const Self) InputPollError!?Event {
//     return try self.next_event_optional() orelse {
//         try self.poll_events();
//         return try self.next_event_optional();
//     };
// }

pub fn run(self: *const zinput, handle_fn: *const fn(Event)InputRunError!void) InputRunError!void {
    var pollfd = [_]std.os.linux.pollfd{ self.internals.poll };
    while((std.posix.poll(&pollfd, -1) catch return InputRunError.PollFailed) >= 0) {
        _ = input.libinput_dispatch(self.internals.context);
        while(input.libinput_get_event(self.internals.context)) |event| {
            const ev = try Event.init(event);
            try handle_fn(ev);
        }
    }
    // while(try self.next_event_optional_block()) |ev| {
    //     try handle_fn(ev);
    // }
}

pub fn deinit(self: *const zinput) void {
    _ = input.libinput_unref(self.internals.context);
    _ = input.udev_unref(self.internals.udev);
}

pub const Event = struct {
    const _Self = @This();

    type_number: u32,
    type: EventData,

    handle: *input.struct_libinput_event,
    context: ?*input.struct_libinput,
    device: ?*input.struct_libinput_device,

    pub fn init(ev: ?*input.struct_libinput_event) EventError!_Self {
        if(ev == null) return EventError.NoEvent;
        const tn: EventType = @enumFromInt(input.libinput_event_get_type(ev));
        if(tn == .None) return EventError.NoneType;
        return _Self {
            .handle = ev.?,
            .context = input.libinput_event_get_context(ev) orelse return EventError.NoContext,
            .device = input.libinput_event_get_device(ev) orelse return EventError.NoDevice,
            .type_number = tn.int(),
            .type = switch(tn) {
                .None                    => EventData{                    .None = null,  } ,

                .DeviceAdded             => EventData{             .DeviceAdded = null,  } ,
                .DeviceRemoved           => EventData{           .DeviceRemoved = null,  } ,

                .KeyboardKey             => EventData{             .KeyboardKey = .from_base_event(ev), } ,

                .PointerMotion           => EventData{           .PointerMotion = .from_base_event(ev), } ,
                .PointerMotionAbsolute   => EventData{   .PointerMotionAbsolute = .from_base_event(ev), } ,
                .PointerButton           => EventData{           .PointerButton = .from_base_event(ev), } ,
                .PointerAxis             => EventData{             .PointerAxis = .from_base_event(ev), } ,
                .PointerScrollWheel      => EventData{      .PointerScrollWheel = .from_base_event(ev), } ,
                .PointerScrollFinger     => EventData{     .PointerScrollFinger = .from_base_event(ev), } ,
                .PointerScrollContinuous => EventData{ .PointerScrollContinuous = .from_base_event(ev), } ,

                .TouchDown               => EventData{               .TouchDown = .from_base_event(ev), } ,
                .TouchUp                 => EventData{                 .TouchUp = .from_base_event(ev), } ,
                .TouchMotion             => EventData{             .TouchMotion = .from_base_event(ev), } ,
                .TouchCancel             => EventData{             .TouchCancel = .from_base_event(ev), } ,
                .TouchFrame              => EventData{              .TouchFrame = .from_base_event(ev), } ,

                .TabletToolAxis          => EventData{          .TabletToolAxis = .from_base_event(ev), } ,
                .TabletToolProximity     => EventData{     .TabletToolProximity = .from_base_event(ev), } ,
                .TabletToolTip           => EventData{           .TabletToolTip = .from_base_event(ev), } ,
                .TabletToolButton        => EventData{        .TabletToolButton = .from_base_event(ev), } ,

                .TabletPadButton         => EventData{         .TabletPadButton = .from_base_event(ev), } ,
                .TabletPadRing           => EventData{           .TabletPadRing = .from_base_event(ev), } ,
                .TabletPadStrip          => EventData{          .TabletPadStrip = .from_base_event(ev), } ,
                .TabletPadKey            => EventData{            .TabletPadKey = .from_base_event(ev), } ,
                .TabletPadDial           => EventData{           .TabletPadDial = .from_base_event(ev), } ,

                .GestureSwipeBegin       => EventData{       .GestureSwipeBegin = .from_base_event(ev), } ,
                .GestureSwipeUpdate      => EventData{      .GestureSwipeUpdate = .from_base_event(ev), } ,
                .GestureSwipeEnd         => EventData{         .GestureSwipeEnd = .from_base_event(ev), } ,
                .GesturePinchBegin       => EventData{       .GesturePinchBegin = .from_base_event(ev), } ,
                .GesturePinchUpdate      => EventData{      .GesturePinchUpdate = .from_base_event(ev), } ,
                .GesturePinchEnd         => EventData{         .GesturePinchEnd = .from_base_event(ev), } ,
                .GestureHoldBegin        => EventData{        .GestureHoldBegin = .from_base_event(ev), } ,
                .GestureHoldEnd          => EventData{          .GestureHoldEnd = .from_base_event(ev), } ,

                .SwitchToggle            => EventData{            .SwitchToggle = .from_base_event(ev), } ,
            }
        };
    }

    // TODO: make self.handle deinit itself
    pub fn deinit(self: *_Self) void {  input.libinput_event_destroy(self.handle); }

    const EventData = union(EventType) {
        // TODO: FIX
        // device_notify_event: ?*struct_libinput_event_device_notify,
        None: ?void,
        DeviceAdded: ?void,
        DeviceRemoved: ?void,

        // keyboard_event: ?*struct_libinput_event_keyboard,
        KeyboardKey: KeyboardEv,

        PointerMotion: PointerEv,
        PointerMotionAbsolute: PointerEv,
        PointerButton: PointerEv,
        PointerAxis: PointerEv,
        PointerScrollWheel: PointerEv,
        PointerScrollFinger: PointerEv,
        PointerScrollContinuous: PointerEv,

        // touch_event: ?*struct_libinput_event_touch,
        TouchDown: TouchEv,
        TouchUp: TouchEv,
        TouchMotion: TouchEv,
        TouchCancel: TouchEv,
        TouchFrame: TouchEv,

        // tablet_tool_event: ?*struct_libinput_event_tablet_tool,
        TabletToolAxis: TabletToolEv,
        TabletToolProximity: TabletToolEv,
        TabletToolTip: TabletToolEv,
        TabletToolButton: TabletToolEv,

        // tablet_pad_event: ?*struct_libinput_event_tablet_pad,
        TabletPadButton: TabletPadEv,
        TabletPadRing: TabletPadEv,
        TabletPadStrip: TabletPadEv,
        TabletPadKey: TabletPadEv,
        TabletPadDial: TabletPadEv,

        // gesture_event: ?*struct_libinput_event_gesture,
        GestureSwipeBegin: GestureEv,
        GestureSwipeUpdate: GestureEv,
        GestureSwipeEnd: GestureEv,
        GesturePinchBegin: GestureEv,
        GesturePinchUpdate: GestureEv,
        GesturePinchEnd: GestureEv,
        GestureHoldBegin: GestureEv,
        GestureHoldEnd: GestureEv,

        // switch_event: ?*struct_libinput_event_switch,
        SwitchToggle: SwitchEv,
    };

    const EventError = error {
        NoEvent,
        NoDevice,
        NoContext,
        NoneType,
        UnknownEvent,
    };


    pub const EventType = enum(u32) {
        None = 0,
        DeviceAdded = 1,
        DeviceRemoved = 2,
        KeyboardKey = 300,
        PointerMotion = 400,
        PointerMotionAbsolute = 401,
        PointerButton = 402,
        PointerAxis = 403,
        PointerScrollWheel = 404,
        PointerScrollFinger = 405,
        PointerScrollContinuous = 406,
        TouchDown = 500,
        TouchUp = 501,
        TouchMotion = 502,
        TouchCancel = 503,
        TouchFrame = 504,
        TabletToolAxis = 600,
        TabletToolProximity = 601,
        TabletToolTip = 602,
        TabletToolButton = 603,
        TabletPadButton = 700,
        TabletPadRing = 701,
        TabletPadStrip = 702,
        TabletPadKey = 703,
        TabletPadDial = 704,
        GestureSwipeBegin = 800,
        GestureSwipeUpdate = 801,
        GestureSwipeEnd = 802,
        GesturePinchBegin = 803,
        GesturePinchUpdate = 804,
        GesturePinchEnd = 805,
        GestureHoldBegin = 806,
        GestureHoldEnd = 807,
        SwitchToggle = 900,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const LogPriority = enum(u32) {
        Debug = 10,
        Info = 20,
        Error = 30,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const DeviceCapability = enum(u32) {
        Keyboard  = 0,
        Pointer  = 1,
        Touch  = 2,
        TabletTool  = 3,
        Tablet_pad  = 4,
        Gesture  = 5,
        Switch  = 6,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const KeyState = enum(u32) {
        Released  = 0,
        Pressed  = 1,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const Led = enum(u32) {
        NumLock  = 1,
        Caps_lock  = 2,
        ScrollLock  = 4,
        Compose  = 8,
        Kana  = 16,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const ButtonState = enum(u32) {
        Released  = 0,
        Pressed  = 1,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const PointerAxis = enum(u32) {
        ScrollVertical = 0,
        ScrollHorizontal = 1,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
        pub fn cuint(self: ___Self) c_uint { return @intCast(@intFromEnum(self)); }
    };

    pub const PointerAxisSource = enum(u32) {
        Wheel  = 1,
        Finger  = 2,
        Continuous  = 3,
        WheelTilt  = 4,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const TabletPadRingAxisSource = enum(u32) {
        Unknown  = 1,
        Finger  = 2,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const TabletPadStripAxisSource = enum(u32) {
        Unknown  = 1,
        Finger  = 2,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const TabletToolType = enum(u32) {
        Pen  = 1,
        Eraser  = 2,
        Brush  = 3,
        Pencil  = 4,
        Airbrush  = 5,
        Mouse  = 6,
        Lens  = 7,
        Totem  = 8,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const TabletToolProximityState = enum(u32) {
        Out  = 0,
        In  = 1,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const TabletToolTipState = enum(u32) {
        Up  = 0,
        Down  = 1,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const SwitchState = enum(u32) {
        Off  = 0,
        On  = 1,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    pub const SwitchType = enum(u32) {
        Lid  = 1,
        TabletMode  = 2,
        KeypadSlide  = 3,
        const ___Self = @This();
        pub fn from_int(i: u32) ___Self { return @enumFromInt(i);  }
        pub fn from_cint(i: c_int) ___Self { return @enumFromInt(i);  }
        pub fn int(self: ___Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: ___Self) c_int { return @intCast(@intFromEnum(self)); }
    };

    const KeyboardEv = struct {
        const __Self = @This();
        const EvType = *input.struct_libinput_event_keyboard;

				event: EvType,
        base_event: ?*input.struct_libinput_event,
        time_usec: u64,

        key: Key,
        state: KeyState = @enumFromInt(0),
        seat_key_count: u32,

        pub fn init(ev: __Self.EvType) __Self {
            var self: __Self = undefined;
						self.event = ev;
            self = .{
                .event = ev,
                .base_event = self.get_base_event(),
                .time_usec = self.get_time_usec(),
                .key = self.get_key(),
                .state = self.get_key_state(),
                .seat_key_count = self.get_seat_key_count(),
            };
            return self;
        }

        pub fn init_lazy(ev: __Self.EvType) __Self {
            return .{ .event = ev };
        }

        pub fn from_base_event(ev: ?*input.struct_libinput_event) __Self {
            const event = input.libinput_event_get_keyboard_event(ev) orelse unreachable;
            return __Self.init(event);
        }

        pub fn deinit(self: *__Self) void {
            input.libinput_event_destroy(self.base_event);
        }

        pub fn get_time(self: *__Self) u32 { return input.libinput_event_keyboard_get_time(self.event); }
        pub fn get_time_usec(self: *__Self) u64 { return input.libinput_event_keyboard_get_time_usec(self.event); }
        pub fn get_key(self: *__Self) Key { return Key.from_int(input.libinput_event_keyboard_get_key(self.event)); }
        pub fn get_key_state(self: *__Self) KeyState { return @enumFromInt(input.libinput_event_keyboard_get_key_state(self.event)); }
        pub fn get_base_event(self: *__Self) ?*input.struct_libinput_event { return input.libinput_event_keyboard_get_base_event(self.event); }
        pub fn get_seat_key_count(self: *__Self) u32 { return input.libinput_event_keyboard_get_seat_key_count(self.event); }
    };

    const PointerEv = struct {
        const __Self = @This();

        const EvType = *input.struct_libinput_event_pointer;

				event: EvType,
        base_event: ?*input.struct_libinput_event,
        time_usec: u64,

        delta: Vec2(f64),
        delta_unaccelerated: Vec2(f64),
        absolute: Vec2(f64),
        axis: struct {
            source: PointerAxisSource,
            value: Vec2(f64),
            value_discrete: Vec2(f64),
        },
        scroll: Vec2(f64),
        scroll_v120: Vec2(f64),

        button: Button,
        state: ButtonState,
        seat_button_count: u32,

        pub fn init(ev: __Self.EvType) __Self {
            var self: __Self = undefined;
						self.event = ev;
            self = .{
                .event = ev,
                .base_event = self.get_base_event(),
                .time_usec = self.get_time_usec(),

                .delta = .{ .x = self.get_dx(), .y = self.get_dy() },
                .delta_unaccelerated = .{
                    .x = self.get_dx_unaccelerated(),
                    .y =  self.get_dy_unaccelerated(),
                },
                .absolute = .{
                    .x = self.get_absolute_x(),
                    .y = self.get_absolute_y(),
                },
                .axis = .{
                    .source = self.get_axis_source(),
                    .value = .{
                        .x = self.get_axis_value(PointerAxis.ScrollHorizontal),
                        .y = self.get_axis_value(PointerAxis.ScrollHorizontal),
                    },
                    .value_discrete = .{
                        .x = self.get_axis_value_discrete(PointerAxis.ScrollHorizontal),
                        .y = self.get_axis_value_discrete(PointerAxis.ScrollHorizontal),
                    },
                },
                .scroll = .{
                    .x = self.get_scroll_value(PointerAxis.ScrollHorizontal),
                    .y = self.get_scroll_value(PointerAxis.ScrollVertical),
                },
                .scroll_v120 = .{
                    .x = self.get_scroll_value_v120(PointerAxis.ScrollHorizontal),
                    .y = self.get_scroll_value_v120(PointerAxis.ScrollVertical),
                },

                .button = self.get_button(),
                .state = self.get_button_state(),
                .seat_button_count = self.get_seat_button_count(),
            };
            return self;
        }

        pub fn init_lazy(ev: __Self.EvType) __Self {
            return .{ .event = ev };
        }

        pub fn from_base_event(ev: ?*input.struct_libinput_event) __Self {
            const event = input.libinput_event_get_pointer_event(ev) orelse unreachable;
            return __Self.init(event);
        }

        pub fn deinit(self: *__Self) void {
            input.libinput_event_destroy(self.base_event);
        }

        pub fn get_time(self: *__Self) u32 { return input.libinput_event_pointer_get_time(self.event); }
        pub fn get_time_usec(self: *__Self) u64 { return input.libinput_event_pointer_get_time_usec(self.event); }

        pub fn get_dx(self: __Self) f64 { return input.libinput_event_pointer_get_dx(self.event); }
        pub fn get_dy(self: __Self) f64 { return input.libinput_event_pointer_get_dy(self.event); }
        pub fn get_dx_unaccelerated(self: __Self) f64 { return input.libinput_event_pointer_get_dx_unaccelerated(self.event); }
        pub fn get_dy_unaccelerated(self: __Self) f64 { return input.libinput_event_pointer_get_dy_unaccelerated(self.event); }
        pub fn get_absolute_x(self: __Self) f64 { return input.libinput_event_pointer_get_absolute_x(self.event); }
        pub fn get_absolute_y(self: __Self) f64 { return input.libinput_event_pointer_get_absolute_y(self.event); }

        pub fn get_absolute_x_transformed(self: __Self, width: u32) f64 { return input.libinput_event_pointer_get_absolute_x_transformed(self.event, width); }
        pub fn get_absolute_y_transformed(self: __Self, height: u32) f64 { return input.libinput_event_pointer_get_absolute_y_transformed(self.event, height); }

        pub fn get_button(self: __Self) Button { return Button.from_int(input.libinput_event_pointer_get_button(self.event)); }
        pub fn get_button_state(self: __Self) ButtonState { return @enumFromInt(input.libinput_event_pointer_get_button_state(self.event)); }
        pub fn get_seat_button_count(self: __Self) u32 { return input.libinput_event_pointer_get_seat_button_count(self.event); }

        pub fn has_axis(self: __Self, axis: PointerAxis) c_int { return input.libinput_event_pointer_has_axis(self.event, axis.cint()); }
        pub fn get_axis_value(self: __Self, axis: PointerAxis) f64 { return input.libinput_event_pointer_get_axis_value(self.event, axis.cuint()); }
        pub fn get_axis_value_discrete(self: __Self, axis: PointerAxis) f64 { return input.libinput_event_pointer_get_axis_value_discrete(self.event, axis.cuint()); }
        pub fn get_axis_source(self: __Self) PointerAxisSource { return @enumFromInt(input.libinput_event_pointer_get_axis_source(self.event)); }

        pub fn get_scroll_value(self: __Self, axis: PointerAxis) f64 { return input.libinput_event_pointer_get_scroll_value(self.event, axis.cuint()); }
        pub fn get_scroll_value_v120(self: __Self, axis: PointerAxis) f64 { return input.libinput_event_pointer_get_scroll_value_v120(self.event, axis.cuint()); }

        pub fn get_base_event(self: __Self) ?*input.struct_libinput_event { return input.libinput_event_pointer_get_base_event(self.event); }
    };

    const TouchEv = struct {
        const __Self = @This();

        const EvType = *input.struct_libinput_event_touch;

				event: EvType,
        base_event: ?*input.struct_libinput_event,
        time_usec: u64,

        position: Vec2(f64),
        slot: i32,
        slot_seat: i32,

        pub fn init(ev: __Self.EvType) __Self {
            var self: __Self = undefined;
						self.event = ev;
            self = .{
                .event = ev,
                .base_event = self.get_base_event(),
                .time_usec = self.get_time_usec(),

                .position = .{ .x = self.get_x(), .y = self.get_y() },
                .slot = self.get_slot(),
                .slot_seat = self.get_slot(),
            };
            return self;
        }

        pub fn init_lazy(ev: __Self.EvType) __Self {
            return .{ .event = ev };
        }

        pub fn from_base_event(ev: ?*input.struct_libinput_event) __Self {
            const event = input.libinput_event_get_touch_event(ev) orelse unreachable;
            return __Self.init(event);
        }

        pub fn deinit(self: *__Self) void {
            input.libinput_event_destroy(self.base_event);
        }


        pub fn get_time(self: __Self) u32 { return input.libinput_event_touch_get_time(self.event); }
        pub fn get_time_usec(self: __Self) u64 { return input.libinput_event_touch_get_time_usec(self.event); }

        // TODO: revise slot
        pub fn get_slot(self: __Self) i32 { return input.libinput_event_touch_get_slot(self.event); }
        pub fn get_seat_slot(self: __Self) i32 { return input.libinput_event_touch_get_seat_slot(self.event); }

        pub fn get_x(self: __Self) f64 { return input.libinput_event_touch_get_x(self.event); }
        pub fn get_y(self: __Self) f64 { return input.libinput_event_touch_get_y(self.event); }
        pub fn get_x_transformed(self: __Self, width: u32) f64 { return input.libinput_event_touch_get_x_transformed(self.event, width); }
        pub fn get_y_transformed(self: __Self, height: u32) f64 { return input.libinput_event_touch_get_y_transformed(self.event, height); }

        pub fn get_base_event(self: __Self) ?*input.struct_libinput_event { return input.libinput_event_touch_get_base_event(self.event); }
		};

    const TabletToolEv = struct {
        const __Self = @This();
        const EvType = *input.struct_libinput_event_tablet_tool;

				event: EvType,
        base_event: ?*input.struct_libinput_event,
        time_usec: u64,

        point: Vec2(f64),
        delta: Vec2(f64),
        tilt: Vec2(f64),

        pressure: f64,
        distance: f64,
        rotation: f64,
        slider_position: f64,

        size_major: f64,
        size_minor: f64,

        wheel_delta: f64,
        wheel_delta_discrete: f64,

        state: struct {
            proximity: TabletToolProximityState,
            tip: TabletToolTipState,
            changes: struct {
                x: bool,
                y: bool,
                pressure: bool,
                distance: bool,
                tilt_x: bool,
                tilt_y: bool,
                rotation: bool,
                slider: bool,
                size_major: bool,
                size_minor: bool,
                wheel: bool,
            },
        },

        button: Button,
        button_state: ButtonState,
        seat_button_count: u32,

        pub fn init(ev: __Self.EvType) __Self {
            var self: __Self = undefined;
						self.event = ev;
            self = .{
                .event = ev,
                .base_event = self.get_base_event(),
                .time_usec = self.get_time_usec(),

                .point = .{ .x = self.get_x(), .y = self.get_y() },
                .delta = .{ .x = self.get_dx(), .y = self.get_dy() },
                .tilt = .{ .x = self.get_tilt_x(), .y = self.get_tilt_y() },

                .pressure = self.get_pressure(),
                .distance = self.get_distance(),
                .rotation = self.get_rotation(),
                .slider_position = self.get_slider_position(),

                .size_major = self.get_size_major(),
                .size_minor = self.get_size_minor(),

                .wheel_delta = self.get_wheel_delta(),
                .wheel_delta_discrete = self.get_wheel_delta_discrete(),

                .state = .{
                    .proximity = self.get_proximity_state(),
                    .tip = self.get_tip_state(),
                    .changes = .{
                        .x = self.x_has_changed(),
                        .y = self.y_has_changed(),
                        .pressure = self.pressure_has_changed(),
                        .distance = self.distance_has_changed(),
                        .tilt_x = self.tilt_x_has_changed(),
                        .tilt_y = self.tilt_y_has_changed(),
                        .rotation = self.rotation_has_changed(),
                        .slider = self.slider_has_changed(),
                        .size_major = self.size_major_has_changed(),
                        .size_minor = self.size_minor_has_changed(),
                        .wheel = self.wheel_has_changed(),
                    },
                },

                .button = self.get_button(),
                .button_state = self.get_button_state(),
                .seat_button_count = self.get_seat_button_count(),
            };
            return self;
        }

        pub fn init_lazy(ev: __Self.EvType) __Self {
            return .{ .event = ev };
        }

        pub fn from_base_event(ev: ?*input.struct_libinput_event) __Self {
            const event = input.libinput_event_get_tablet_tool_event(ev) orelse unreachable;
            return __Self.init(event);
        }

        pub fn deinit(self: *__Self) void {
            input.libinput_event_destroy(self.base_event);
        }

        pub fn x_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_x_has_changed(self.event) == 1) true else false; }
        pub fn y_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_y_has_changed(self.event) == 1) true else false; }
        pub fn pressure_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_pressure_has_changed(self.event) == 1) true else false; }
        pub fn distance_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_distance_has_changed(self.event) == 1) true else false; }
        pub fn tilt_x_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_tilt_x_has_changed(self.event) == 1) true else false; }
        pub fn tilt_y_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_tilt_y_has_changed(self.event) == 1) true else false; }
        pub fn rotation_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_rotation_has_changed(self.event) == 1) true else false; }
        pub fn slider_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_slider_has_changed(self.event) == 1) true else false; }
        pub fn size_major_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_size_major_has_changed(self.event) == 1) true else false; }
        pub fn size_minor_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_size_minor_has_changed(self.event) == 1) true else false; }
        pub fn wheel_has_changed(self: *__Self) bool { return if(input.libinput_event_tablet_tool_wheel_has_changed(self.event) == 1) true else false; }

        pub fn get_x(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_x(self.event); }
        pub fn get_y(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_y(self.event); }
        pub fn get_dx(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_dx(self.event); }
        pub fn get_dy(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_dy(self.event); }
        pub fn get_tilt_x(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_tilt_x(self.event); }
        pub fn get_tilt_y(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_tilt_y(self.event); }
        pub fn get_pressure(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_pressure(self.event); }
        pub fn get_distance(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_distance(self.event); }
        pub fn get_rotation(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_rotation(self.event); }
        pub fn get_slider_position(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_slider_position(self.event); }

        // TODO: find out wtf is size
        pub fn get_size_major(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_size_major(self.event); }
        pub fn get_size_minor(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_size_minor(self.event); }

        pub fn get_wheel_delta(self: *__Self) f64 { return input.libinput_event_tablet_tool_get_wheel_delta(self.event); }
        pub fn get_wheel_delta_discrete(self: *__Self) c_int { return input.libinput_event_tablet_tool_get_wheel_delta_discrete(self.event); }

        pub fn get_x_transformed(self: *__Self, width: u32) f64 { return input.libinput_event_tablet_tool_get_x_transformed(self.event, width); }
        pub fn get_y_transformed(self: *__Self, height: u32) f64 { return input.libinput_event_tablet_tool_get_y_transformed(self.event, height); }

        // TODO: find out wtf is tool
        pub fn get_tool(self: *__Self) ?*input.struct_libinput_tablet_tool { return input.libinput_event_tablet_tool_get_tool(self.event); }

        pub fn get_proximity_state(self: *__Self) TabletToolProximityState { return @enumFromInt(input.libinput_event_tablet_tool_get_proximity_state(self.event)); }
        pub fn get_tip_state(self: *__Self) TabletToolTipState { return @enumFromInt(input.libinput_event_tablet_tool_get_tip_state(self.event)); }

        pub fn get_button(self: *__Self) Button { return Button.from_int(input.libinput_event_tablet_tool_get_button(self.event)); }
        pub fn get_button_state(self: *__Self) ButtonState { return @enumFromInt(input.libinput_event_tablet_tool_get_button_state(self.event)); }
        pub fn get_seat_button_count(self: *__Self) u32 { return input.libinput_event_tablet_tool_get_seat_button_count(self.event); }

        pub fn get_time(self: *__Self) u32 { return input.libinput_event_tablet_tool_get_time(self.event); }
        pub fn get_time_usec(self: *__Self) u64 { return input.libinput_event_tablet_tool_get_time_usec(self.event); }
        pub fn get_base_event(self: *__Self) ?*input.struct_libinput_event { return input.libinput_event_tablet_tool_get_base_event(self.event); }
    };

    const TabletPadEv = struct {
        const __Self = @This();

        const EvType = *input.struct_libinput_event_tablet_pad;

				event: EvType,
        base_event: ?*input.struct_libinput_event,
        time_usec: u64,

        ring_position: f64,
        ring_number: u32,
        ring_source: TabletPadRingAxisSource,

        strip_position: f64,
        strip_number: u32,
        strip_source: TabletPadStripAxisSource,

        buton_number: Button,
        buton_state: ButtonState,

        key: Key,
        key_state: KeyState,

        dial_dlta_v120: f64,
        dial_number: u32,

        mode: u32,
        mode_group: ?*input.struct_libinput_tablet_pad_mode_group,


        pub fn init(ev: __Self.EvType) __Self {
            var self: __Self = undefined;
						self.event = ev;
            self = .{
                .event = ev,
                .base_event = self.get_base_event(),
                .time_usec = self.get_time_usec(),

                .ring_position = self.get_ring_position(),
                .ring_number = self.get_ring_number(),
                .ring_source = self.get_ring_source(),

                .strip_position = self.get_strip_position(),
                .strip_number = self.get_strip_number(),
                .strip_source = self.get_strip_source(),

                .buton_number = self.get_button_number(),
                .buton_state = self.get_button_state(),

                .key = self.get_key(),
                .key_state = self.get_key_state(),

                .dial_dlta_v120 = self.get_dial_delta_v120(),
                .dial_number = self.get_dial_number(),

                .mode = self.get_mode(),
                .mode_group = self.get_mode_group(),
            };
            return self;
        }

        pub fn init_lazy(ev: __Self.EvType) __Self { return .{ .event = ev }; }

        pub fn from_base_event(ev: ?*input.struct_libinput_event) __Self {
            const event = input.libinput_event_get_tablet_pad_event(ev) orelse unreachable;
            return __Self.init(event);
        }

        pub fn deinit(self: *__Self) void { input.libinput_event_destroy(self.base_event); }

				pub fn get_ring_position(self: *__Self) f64 { return input.libinput_event_tablet_pad_get_ring_position(self.event); }
				pub fn get_ring_number(self: *__Self) u32 { return @intCast(input.libinput_event_tablet_pad_get_ring_number(self.event)); }
				pub fn get_ring_source(self: *__Self) TabletPadRingAxisSource { return @enumFromInt(input.libinput_event_tablet_pad_get_ring_source(self.event)); }

				pub fn get_strip_position(self: *__Self) f64 { return input.libinput_event_tablet_pad_get_strip_position(self.event); }
				pub fn get_strip_number(self: *__Self) u32 { return @intCast(input.libinput_event_tablet_pad_get_strip_number(self.event)); }
				pub fn get_strip_source(self: *__Self) TabletPadStripAxisSource { return @enumFromInt(input.libinput_event_tablet_pad_get_strip_source(self.event)); }

				pub fn get_button_number(self: *__Self) Button { return Button.from_int(input.libinput_event_tablet_pad_get_button_number(self.event)); }
				pub fn get_button_state(self: *__Self) ButtonState { return @enumFromInt(input.libinput_event_tablet_pad_get_button_state(self.event)); }

				pub fn get_key(self: *__Self) Key { return Key.from_int(input.libinput_event_tablet_pad_get_key(self.event)); }
				pub fn get_key_state(self: *__Self) KeyState { return @enumFromInt(input.libinput_event_tablet_pad_get_key_state(self.event)); }

				pub fn get_dial_delta_v120(self: *__Self) f64 { return input.libinput_event_tablet_pad_get_dial_delta_v120(self.event); }
				pub fn get_dial_number(self: *__Self) u32 { return @intCast(input.libinput_event_tablet_pad_get_dial_number(self.event)); }

				pub fn get_mode(self: *__Self) u32 { return @intCast(input.libinput_event_tablet_pad_get_mode(self.event)); }
				pub fn get_mode_group(self: *__Self) ?*input.struct_libinput_tablet_pad_mode_group { return input.libinput_event_tablet_pad_get_mode_group(self.event); }

				pub fn get_time(self: *__Self) u32 { return input.libinput_event_tablet_pad_get_time(self.event); }
				pub fn get_time_usec(self: *__Self) u64 { return input.libinput_event_tablet_pad_get_time_usec(self.event); }
				pub fn get_base_event(self: *__Self) ?*input.struct_libinput_event { return input.libinput_event_tablet_pad_get_base_event(self.event); }
    };

    const GestureEv = struct {
        const __Self = @This();

        const EvType = *input.struct_libinput_event_gesture;

				event: EvType,
        base_event: ?*input.struct_libinput_event,
        time_usec: u64,

        finger_count: u32,
        cancelled: bool,
        delta: Vec2(f64),
        delta_unaccelerated: Vec2(f64),
        scale: f64,
        angle_delta: f64,

        pub fn init(ev: __Self.EvType) __Self {
            var self: __Self = undefined;
						self.event = ev;
            self = .{
                .event = ev,
                .base_event = self.get_base_event(),
                .time_usec = self.get_time_usec(),

                 .finger_count = self.get_finger_count(),
                 .cancelled = self.get_cancelled(),
                 .delta = .{
                     .x = self.get_dx(),
                     .y = self.get_dy(),
                 },
                 .delta_unaccelerated = .{
                     .x = self.get_dx_unaccelerated(),
                     .y = self.get_dy_unaccelerated(),
                 },
                 .scale = self.get_scale(),
                 .angle_delta = self.get_angle_delta(),
            };
            return self;
        }

        pub fn init_lazy(ev: __Self.EvType) __Self { return .{ .event = ev }; }

        pub fn from_base_event(ev: ?*input.struct_libinput_event) __Self {
            const event = input.libinput_event_get_gesture_event(ev) orelse unreachable;
            return __Self.init(event);
        }

        pub fn deinit(self: *__Self) void { input.libinput_event_destroy(self.base_event); }

        pub fn get_finger_count(self: *__Self) u32 { return @intCast(input.libinput_event_gesture_get_finger_count(self.event)); }
        pub fn get_cancelled(self: *__Self) bool { return if(input.libinput_event_gesture_get_cancelled(self.event) == 1) true else false; }

        pub fn get_dx(self: *__Self) f64 { return input.libinput_event_gesture_get_dx(self.event); }
        pub fn get_dy(self: *__Self) f64 { return input.libinput_event_gesture_get_dy(self.event); }

        pub fn get_dx_unaccelerated(self: *__Self) f64 { return input.libinput_event_gesture_get_dx_unaccelerated(self.event); }
        pub fn get_dy_unaccelerated(self: *__Self) f64 { return input.libinput_event_gesture_get_dy_unaccelerated(self.event); }

        pub fn get_scale(self: *__Self) f64 { return input.libinput_event_gesture_get_scale(self.event); }
        pub fn get_angle_delta(self: *__Self) f64 { return input.libinput_event_gesture_get_angle_delta(self.event); }

        pub fn get_time(self: *__Self) u32 { return input.libinput_event_gesture_get_time(self.event); }
        pub fn get_time_usec(self: *__Self) u64 { return input.libinput_event_gesture_get_time_usec(self.event); }
        pub fn get_base_event(self: *__Self) ?*input.struct_libinput_event { return input.libinput_event_gesture_get_base_event(self.event); }
		};

    const SwitchEv = struct {
        const __Self = @This();

        const EvType = *input.struct_libinput_event_switch;

				event: EvType,
        base_event: ?*input.struct_libinput_event,
        time_usec: u64,

        switch_type: SwitchType,
        switch_state: SwitchState,

        pub fn init(ev: __Self.EvType) __Self {
            var self: __Self = undefined;
						self.event = ev;
            self = .{
                .event = ev,
                .base_event = self.get_base_event(),
                .time_usec = self.get_time_usec(),

                .switch_type = self.get_switch(),
                .switch_state = self.get_switch_state(),
            };
            return self;
        }

        pub fn init_lazy(ev: __Self.EvType) __Self {
            return .{ .event = ev };
        }

        pub fn from_base_event(ev: ?*input.struct_libinput_event) __Self {
            const event = input.libinput_event_get_switch_event(ev) orelse unreachable;
            return __Self.init(event);
        }

        pub fn deinit(self: *__Self) void {
            input.libinput_event_destroy(self.base_event);
        }

				pub fn get_switch(self: *__Self) SwitchType { return @enumFromInt(input.libinput_event_switch_get_switch(self.event)); }
				pub fn get_switch_state(self: *__Self) SwitchState { return @enumFromInt(input.libinput_event_switch_get_switch_state(self.event)); }
				pub fn get_base_event(self: *__Self) ?*input.struct_libinput_event { return input.libinput_event_switch_get_base_event(self.event); }
				pub fn get_time(self: *__Self) u32 { return input.libinput_event_switch_get_time(self.event); }
				pub fn get_time_usec(self: *__Self) u64 { return input.libinput_event_switch_get_time_usec(self.event); }
    };

    pub const Key = enum(u32) {
				Reserved = 0,
				Esc = 1,
			  n1 = 2,
			  n2 = 3,
			  n3 = 4,
			  n4 = 5,
			  n5 = 6,
			  n6 = 7,
			  n7 = 8,
			  n8 = 9,
			  n9 = 10,
			  n0 = 11,
				Minus = 12,
				Equal = 13,
				Backspace = 14,
				Tab = 15,
				Q = 16,
				W = 17,
				E = 18,
				R = 19,
				T = 20,
				Y = 21,
				U = 22,
				I = 23,
				O = 24,
				P = 25,
				Leftbrace = 26,
				Rightbrace = 27,
				Enter = 28,
				Leftctrl = 29,
				A = 30,
				S = 31,
				D = 32,
				F = 33,
				G = 34,
				H = 35,
				J = 36,
				K = 37,
				L = 38,
				Semicolon = 39,
				Apostrophe = 40,
				Grave = 41,
				Leftshift = 42,
				Backslash = 43,
				Z = 44,
				X = 45,
				C = 46,
				V = 47,
				B = 48,
				N = 49,
				M = 50,
				Comma = 51,
				Dot = 52,
				Slash = 53,
				Rightshift = 54,
				Kpasterisk = 55,
				Leftalt = 56,
				Space = 57,
				Capslock = 58,
				F1 = 59,
				F2 = 60,
				F3 = 61,
				F4 = 62,
				F5 = 63,
				F6 = 64,
				F7 = 65,
				F8 = 66,
				F9 = 67,
				F10 = 68,
				Numlock = 69,
				Scrolllock = 70,
				Kp7 = 71,
				Kp8 = 72,
				Kp9 = 73,
				Kpminus = 74,
				Kp4 = 75,
				Kp5 = 76,
				Kp6 = 77,
				Kpplus = 78,
				Kp1 = 79,
				Kp2 = 80,
				Kp3 = 81,
				Kp0 = 82,
				Kpdot = 83,

				Zenkakuhankaku = 85,
				n102nd = 86,
				F11 = 87,
				F12 = 88,
				Ro = 89,
				Katakana = 90,
				Hiragana = 91,
				Henkan = 92,
				Katakanahiragana = 93,
				Muhenkan = 94,
				Kpjpcomma = 95,
				Kpenter = 96,
				Rightctrl = 97,
				Kpslash = 98,
				Sysrq = 99,
				Rightalt = 100,
				Linefeed = 101,
				Home = 102,
				Up = 103,
				Pageup = 104,
				Left = 105,
				Right = 106,
				End = 107,
				Down = 108,
				Pagedown = 109,
				Insert = 110,
				Delete = 111,
				Macro = 112,
				Mute = 113,
				Volumedown = 114,
				Volumeup = 115,
				Power = 116,
				Kpequal = 117,
				Kpplusminus = 118,
				Pause = 119,
				Scale = 120,

				Kpcomma = 121,
				Hangeul = 122,
				// Hanguel = 122,
				Hanja = 123,
				Yen = 124,
				Leftmeta = 125,
				Rightmeta = 126,
				Compose = 127,

				Stop = 128,
				Again = 129,
				Props = 130,
				Undo = 131,
				Front = 132,
				Copy = 133,
				Open = 134,
				Paste = 135,
				Find = 136,
				Cut = 137,
				Help = 138,
				Menu = 139,
				Calc = 140,
				Setup = 141,
				Sleep = 142,
				Wakeup = 143,
				File = 144,
				Sendfile = 145,
				Deletefile = 146,
				Xfer = 147,
				Prog1 = 148,
				Prog2 = 149,
				Www = 150,
				Msdos = 151,
				Coffee = 152,
				// Screenlock = 152,
				Rotate_display = 153,
				// Direction = 153,
				Cyclewindows = 154,
				Mail = 155,
				Bookmarks = 156,
				Computer = 157,
				Back = 158,
				Forward = 159,
				Closecd = 160,
				Ejectcd = 161,
				Ejectclosecd = 162,
				Nextsong = 163,
				Playpause = 164,
				Previoussong = 165,
				Stopcd = 166,
				Record = 167,
				Rewind = 168,
				Phone = 169,
				Iso = 170,
				Config = 171,
				Homepage = 172,
				Refresh = 173,
				Exit = 174,
				Move = 175,
				Edit = 176,
				Scrollup = 177,
				Scrolldown = 178,
				Kpleftparen = 179,
				Kprightparen = 180,
				New = 181,
				Redo = 182,

				F13 = 183,
				F14 = 184,
				F15 = 185,
				F16 = 186,
				F17 = 187,
				F18 = 188,
				F19 = 189,
				F20 = 190,
				F21 = 191,
				F22 = 192,
				F23 = 193,
				F24 = 194,

				Playcd = 200,
				Pausecd = 201,
				Prog3 = 202,
				Prog4 = 203,
				All_applications = 204,
				// Dashboard = 204,
				Suspend = 205,
				Close = 206,
				Play = 207,
				Fastforward = 208,
				Bassboost = 209,
				Print = 210,
				Hp = 211,
				Camera = 212,
				Sound = 213,
				Question = 214,
				Email = 215,
				Chat = 216,
				Search = 217,
				Connect = 218,
				Finance = 219,
				Sport = 220,
				Shop = 221,
				Alterase = 222,
				Cancel = 223,
				Brightnessdown = 224,
				Brightnessup = 225,
				Media = 226,

				Switchvideomode = 227,
				Kbdillumtoggle = 228,
				Kbdillumdown = 229,
				Kbdillumup = 230,

				Send = 231,
				Reply = 232,
				Forwardmail = 233,
				Save = 234,
				Documents = 235,

				Battery = 236,

				Bluetooth = 237,
				Wlan = 238,
				Uwb = 239,

				Unknown = 240,

				Video_next = 241,
				Video_prev = 242,
				Brightness_cycle = 243,
				Brightness_auto = 244,
				// Brightness_zero = 244,
				Display_off = 245,

				Wwan = 246,
				// Wimax = 246,
				Rfkill = 247,

				Micmute = 248,

        const __Self = @This();

        pub fn from_int(i: u32) __Self { return @enumFromInt(i); }
        pub fn from_cint(i: cint) __Self { return @enumFromInt(i); }
        pub fn int(self: __Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: __Self) c_int { return @intCast(@intFromEnum(self)); }
        pub fn name(self: __Self) []const u8 { return @tagName(self); }
    };

    pub const Button = enum(u32) {
				// Misc = 0x100,
			  n0 = 0x100,
			  n1 = 0x101,
			  n2 = 0x102,
			  n3 = 0x103,
			  n4 = 0x104,
			  n5 = 0x105,
			  n6 = 0x106,
			  n7 = 0x107,
			  n8 = 0x108,
			  n9 = 0x109,

				// Mouse = 0x110,
				Left = 0x110,
				Right = 0x111,
				Middle = 0x112,
				Side = 0x113,
				Extra = 0x114,
				Forward = 0x115,
				Back = 0x116,
				Task = 0x117,

				// Joystick = 0x120,
				Trigger = 0x120,
				Thumb = 0x121,
				Thumb2 = 0x122,
				Top = 0x123,
				Top2 = 0x124,
				Pinkie = 0x125,
				Base = 0x126,
				Base2 = 0x127,
				Base3 = 0x128,
				Base4 = 0x129,
				Base5 = 0x12,
				// Base6 = 0x12,
				// Dead = 0x12,

				// Gamepad = 0x130,
				South = 0x130,
				// A = 0x130,
				East = 0x131,
				// B = 0x131,
				C = 0x132,
				North = 0x133,
				// X = 0x133,
				West = 0x134,
				// Y = 0x134,
				Z = 0x135,
				Tl = 0x136,
				Tr = 0x137,
				Tl2 = 0x138,
				Tr2 = 0x139,
				// Select = 0x13,
				// Start = 0x13,
				Mode = 0x13,
				// Thumbl = 0x13,
				// Thumbr = 0x13,

				// Digi = 0x140,
				Tool_pen = 0x140,
				Tool_rubber = 0x141,
				Tool_brush = 0x142,
				Tool_pencil = 0x143,
				Tool_airbrush = 0x144,
				Tool_finger = 0x145,
				Tool_mouse = 0x146,
				Tool_lens = 0x147,
				Tool_quinttap = 0x148,
				Stylus3 = 0x149,
				Touch = 0x14,
				// Stylus = 0x14,
				// Stylus2 = 0x14,
				// Tool_doubletap = 0x14,
				// Tool_tripletap = 0x14,
				// Tool_quadtap = 0x14,

        const __Self = @This();

        pub fn from_int(i: u32) __Self { return @enumFromInt(i); }
        pub fn from_cint(i: cint) __Self { return @enumFromInt(i); }
        pub fn int(self: __Self) u32 { return @intFromEnum(self); }
        pub fn cint(self: __Self) c_int { return @intCast(@intFromEnum(self)); }
        pub fn name(self: __Self) []const u8 { return @tagName(self); }
    };

// pub extern fn input.libinput_event_get_device_notify_event(event: ?*struct_libinput_event) ?*struct_libinput_event_device_notify;
// pub extern fn input.libinput_event_device_notify_get_base_event(event: ?*struct_libinput_event_device_notify) ?*struct_libinput_event;

// tablet_tool_get_type(tool: ?*struct_libinput_tablet_tool) input.enum_libinput_tablet_tool_type;
// tablet_tool_get_tool_id(tool: ?*struct_libinput_tablet_tool) u64;
// tablet_tool_get_name(tool: ?*struct_libinput_tablet_tool) [*c]const u8;
// tablet_tool_ref(tool: ?*struct_libinput_tablet_tool) ?*struct_libinput_tablet_tool;
// tablet_tool_unref(tool: ?*struct_libinput_tablet_tool) ?*struct_libinput_tablet_tool;
// tablet_tool_has_pressure(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_has_distance(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_has_tilt(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_has_rotation(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_has_slider(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_has_size(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_has_wheel(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_has_button(tool: ?*struct_libinput_tablet_tool, code: u32) c_int;
// tablet_tool_is_unique(tool: ?*struct_libinput_tablet_tool) c_int;
// tablet_tool_get_serial(tool: ?*struct_libinput_tablet_tool) u64;
// tablet_tool_get_user_data(tool: ?*struct_libinput_tablet_tool) ?*anyopaque;
// tablet_tool_set_user_data(tool: ?*struct_libinput_tablet_tool, user_data: ?*anyopaque) void;
};

const t = std.testing;

test "zengi init" {
    // const fun = struct { pub fn fun(ev: zinput.Event) zinput.InputRunError!void {
    //     switch(ev.type) {
    //         .None => return zinput.InputError.NoneType,
    //         .DeviceAdded, .DeviceRemoved => {},
    //         else => {
    //             std.debug.print("event {}\n", .{ev});
    //         }
    //     }
    // } }.fun;

    const in = try zinput.init();
    defer in.deinit();

    try t.expect(true);

    // try in.run(fun);
}


// CONFIG
//
//
//
// pub const LIBINPUT_CONFIG_STATUS_SUCCESS: c_int = 0;
// pub const LIBINPUT_CONFIG_STATUS_UNSUPPORTED: c_int = 1;
// pub const LIBINPUT_CONFIG_STATUS_INVALID: c_int = 2;
// pub const enum_libinput_config_status = c_uint;
//
//
// pub const LIBINPUT_CONFIG_TAP_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_TAP_ENABLED: c_int = 1;
// pub const enum_libinput_config_tap_state = c_uint;
//
//
// pub const LIBINPUT_CONFIG_TAP_MAP_LRM: c_int = 0;
// pub const LIBINPUT_CONFIG_TAP_MAP_LMR: c_int = 1;
// pub const enum_libinput_config_tap_button_map = c_uint;
// pub const LIBINPUT_CONFIG_CLICKFINGER_MAP_LRM: c_int = 0;
// pub const LIBINPUT_CONFIG_CLICKFINGER_MAP_LMR: c_int = 1;
// pub const enum_libinput_config_clickfinger_button_map = c_uint;
//
//
// pub const LIBINPUT_CONFIG_DRAG_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_DRAG_ENABLED: c_int = 1;
// pub const enum_libinput_config_drag_state = c_uint;
//
//
// pub const LIBINPUT_CONFIG_DRAG_LOCK_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_DRAG_LOCK_ENABLED_TIMEOUT: c_int = 1;
// pub const LIBINPUT_CONFIG_DRAG_LOCK_ENABLED: c_int = 1;
// pub const LIBINPUT_CONFIG_DRAG_LOCK_ENABLED_STICKY: c_int = 2;
// pub const enum_libinput_config_drag_lock_state = c_uint;
//
//
// pub const LIBINPUT_CONFIG_3FG_DRAG_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_3FG_DRAG_ENABLED_3FG: c_int = 1;
// pub const LIBINPUT_CONFIG_3FG_DRAG_ENABLED_4FG: c_int = 2;
// pub const enum_libinput_config_3fg_drag_state = c_uint;
//
//
//
// pub const LIBINPUT_CONFIG_SEND_EVENTS_ENABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_SEND_EVENTS_DISABLED: c_int = 1;
// pub const LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE: c_int = 2;
// pub const enum_libinput_config_send_events_mode = c_uint;
//
//
// pub const LIBINPUT_CONFIG_ACCEL_PROFILE_NONE: c_int = 0;
// pub const LIBINPUT_CONFIG_ACCEL_PROFILE_FLAT: c_int = 1;
// pub const LIBINPUT_CONFIG_ACCEL_PROFILE_ADAPTIVE: c_int = 2;
// pub const LIBINPUT_CONFIG_ACCEL_PROFILE_CUSTOM: c_int = 4;
// pub const enum_libinput_config_accel_profile = c_uint;
//
//
//
// pub const LIBINPUT_ACCEL_TYPE_FALLBACK: c_int = 0;
// pub const LIBINPUT_ACCEL_TYPE_MOTION: c_int = 1;
// pub const LIBINPUT_ACCEL_TYPE_SCROLL: c_int = 2;
// pub const enum_libinput_config_accel_type = c_uint;
//
//
// pub const LIBINPUT_CONFIG_CLICK_METHOD_NONE: c_int = 0;
// pub const LIBINPUT_CONFIG_CLICK_METHOD_BUTTON_AREAS: c_int = 1;
// pub const LIBINPUT_CONFIG_CLICK_METHOD_CLICKFINGER: c_int = 2;
// pub const enum_libinput_config_click_method = c_uint;
//
//
// pub const LIBINPUT_CONFIG_MIDDLE_EMULATION_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED: c_int = 1;
// pub const enum_libinput_config_middle_emulation_state = c_uint;
//
//
// pub const LIBINPUT_CONFIG_SCROLL_NO_SCROLL: c_int = 0;
// pub const LIBINPUT_CONFIG_SCROLL_2FG: c_int = 1;
// pub const LIBINPUT_CONFIG_SCROLL_EDGE: c_int = 2;
// pub const LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN: c_int = 4;
// pub const LIBINPUT_CONFIG_SCROLL_CIRCULAR: c_int = 8;
// pub const enum_libinput_config_scroll_method = c_uint;
//
//
//
// pub const LIBINPUT_CONFIG_SCROLL_BUTTON_LOCK_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_SCROLL_BUTTON_LOCK_ENABLED: c_int = 1;
// pub const enum_libinput_config_scroll_button_lock_state = c_uint;
//
//
//
// pub const LIBINPUT_CONFIG_DWT_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_DWT_ENABLED: c_int = 1;
// pub const enum_libinput_config_dwt_state = c_uint;
//
//
//
// pub const LIBINPUT_CONFIG_DWTP_DISABLED: c_int = 0;
// pub const LIBINPUT_CONFIG_DWTP_ENABLED: c_int = 1;
// pub const enum_libinput_config_dwtp_state = c_uint;
//
//
//
// pub const LIBINPUT_CONFIG_ERASER_BUTTON_DEFAULT: c_int = 0;
// pub const LIBINPUT_CONFIG_ERASER_BUTTON_BUTTON: c_int = 1;
// pub const enum_libinput_config_eraser_button_mode = c_uint;
