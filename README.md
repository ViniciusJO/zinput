# Zinput <WIP>

[libinput](https://www.freedesktop.org/wiki/Software/libinput) bindings for `zig` programming language

## Adding as dependency

First fetch the lib:

```sh
zig fetch --save git+https://github.com/ViniciusJO/zinput.git
```

Then in the `build` function in `build.zig` file add:

```zig
const zinput_dep = b.dependency("zinput", .{
    // .target = target,
    // .optimize = optimize
});
const zinput_mod = zinput_dep.module("zinput");
```

Then, on the desired module, inlcude on the import section:

```zig
.{ .name = "zinput", .module = zinput_mod },
```

example:

```zig
const mod = b.addModule("zinput_test", .{
    .root_source_file = b.path("src/main.zig"),
    .target = target,
    .optimize = optimize,
    .imports = &.{
        .{ .name = "zinput", .module = zinput_dep.module("zinput") },
    },
});
```

Or throught the `exe`:

```zig
exe.root_module.addImport("zinput", zinput_mod);
```

## Usage

Example using event loop through the `run` method:

```zig
const std = @import("std");
const zinput = @import("zinput");

pub fn main(_: std.process.Init) !void {
    const in = try zinput.init();
    defer in.deinit();

    try in.run(fun);
}

fn fun(ev: zinput.Event) zinput.InputRunError!void {
    switch(ev.type) {
        .None => return zinput.InputError.NoneType,
        .DeviceAdded, .DeviceRemoved => {},
        else => {
            std.log.debug("Event {}\n", .{ev});
        }
    }
}
```

## TODOs:

- [ ] document usage
- [ ] fix event initialization for:
    - [ ] pointer
    - [ ] table
    - [ ] gesture
    - [ ] device add/remove
