const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;
pub const struct___va_list_tag_1 = extern struct {
    unnamed_0: c_uint = 0,
    unnamed_1: c_uint = 0,
    unnamed_2: ?*anyopaque = null,
    unnamed_3: ?*anyopaque = null,
};
pub const __builtin_va_list = [1]struct___va_list_tag_1;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub extern fn gnu_dev_major(__dev: __dev_t) c_uint;
pub extern fn gnu_dev_minor(__dev: __dev_t) c_uint;
pub extern fn gnu_dev_makedev(__major: c_uint, __minor: c_uint) __dev_t;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __aro_max_align_ll: c_longlong = 0,
    __aro_max_align_ld: c_longdouble = 0,
};
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_int;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @byteSwap(@as(__uint16_t, __bsx));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @bitCast(@as(c_int, @byteSwap(@as(c_int, @bitCast(@as(c_uint, @truncate(__bsx)))))));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @bitCast(@as(c_long, @byteSwap(@as(c_long, @bitCast(@as(c_ulong, @truncate(__bsx)))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = 0,
    tv_usec: __suseconds_t = 0,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = 0,
    tv_nsec: __syscall_slong_t = 0,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_2 = extern struct {
    __low: c_uint = 0,
    __high: c_uint = 0,
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_2,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = null,
    __next: [*c]struct___pthread_internal_list = null,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = null,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = 0,
    __count: c_uint = 0,
    __owner: c_int = 0,
    __nusers: c_uint = 0,
    __kind: c_int = 0,
    __spins: c_short = 0,
    __glibc_reserved: c_short = 0,
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = 0,
    __writers: c_uint = 0,
    __wrphase_futex: c_uint = 0,
    __writers_futex: c_uint = 0,
    __pad3: c_uint = 0,
    __pad4: c_uint = 0,
    __cur_writer: c_int = 0,
    __shared: c_int = 0,
    __pad1: c_ulong = 0,
    __pad2: c_ulong = 0,
    __flags: c_uint = 0,
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = 0,
    __wrefs: c_uint = 0,
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __unused_initialized_1: c_uint = 0,
    __unused_initialized_2: c_uint = 0,
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = 0,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const struct_udev = opaque {
    pub const udev_ref = __root.udev_ref;
    pub const udev_unref = __root.udev_unref;
    pub const udev_set_log_fn = __root.udev_set_log_fn;
    pub const udev_get_log_priority = __root.udev_get_log_priority;
    pub const udev_set_log_priority = __root.udev_set_log_priority;
    pub const udev_get_userdata = __root.udev_get_userdata;
    pub const udev_set_userdata = __root.udev_set_userdata;
    pub const udev_device_new_from_syspath = __root.udev_device_new_from_syspath;
    pub const udev_device_new_from_devnum = __root.udev_device_new_from_devnum;
    pub const udev_device_new_from_subsystem_sysname = __root.udev_device_new_from_subsystem_sysname;
    pub const udev_device_new_from_device_id = __root.udev_device_new_from_device_id;
    pub const udev_device_new_from_environment = __root.udev_device_new_from_environment;
    pub const udev_monitor_new_from_netlink = __root.udev_monitor_new_from_netlink;
    pub const udev_enumerate_new = __root.udev_enumerate_new;
    pub const udev_queue_new = __root.udev_queue_new;
    pub const udev_hwdb_new = __root.udev_hwdb_new;
    pub const ref = __root.udev_ref;
    pub const unref = __root.udev_unref;
    pub const set_log_fn = __root.udev_set_log_fn;
    pub const get_log_priority = __root.udev_get_log_priority;
    pub const set_log_priority = __root.udev_set_log_priority;
    pub const get_userdata = __root.udev_get_userdata;
    pub const set_userdata = __root.udev_set_userdata;
    pub const device_new_from_syspath = __root.udev_device_new_from_syspath;
    pub const device_new_from_devnum = __root.udev_device_new_from_devnum;
    pub const device_new_from_subsystem_sysname = __root.udev_device_new_from_subsystem_sysname;
    pub const device_new_from_device_id = __root.udev_device_new_from_device_id;
    pub const device_new_from_environment = __root.udev_device_new_from_environment;
    pub const monitor_new_from_netlink = __root.udev_monitor_new_from_netlink;
    pub const enumerate_new = __root.udev_enumerate_new;
    pub const queue_new = __root.udev_queue_new;
    pub const hwdb_new = __root.udev_hwdb_new;
};
pub extern fn udev_ref(p: ?*struct_udev) ?*struct_udev;
pub extern fn udev_unref(udev: ?*struct_udev) ?*struct_udev;
pub extern fn udev_new() ?*struct_udev;
pub extern fn udev_set_log_fn(udev: ?*struct_udev, log_fn: ?*const fn (udev: ?*struct_udev, priority: c_int, file: [*c]const u8, line: c_int, @"fn": [*c]const u8, format: [*c]const u8, args: [*c]struct___va_list_tag_1) callconv(.c) void) void;
pub extern fn udev_get_log_priority(udev: ?*struct_udev) c_int;
pub extern fn udev_set_log_priority(udev: ?*struct_udev, priority: c_int) void;
pub extern fn udev_get_userdata(udev: ?*struct_udev) ?*anyopaque;
pub extern fn udev_set_userdata(udev: ?*struct_udev, userdata: ?*anyopaque) void;
pub const struct_udev_list_entry = opaque {
    pub const udev_list_entry_get_next = __root.udev_list_entry_get_next;
    pub const udev_list_entry_get_by_name = __root.udev_list_entry_get_by_name;
    pub const udev_list_entry_get_name = __root.udev_list_entry_get_name;
    pub const udev_list_entry_get_value = __root.udev_list_entry_get_value;
    pub const get_next = __root.udev_list_entry_get_next;
    pub const get_by_name = __root.udev_list_entry_get_by_name;
    pub const get_name = __root.udev_list_entry_get_name;
    pub const get_value = __root.udev_list_entry_get_value;
};
pub extern fn udev_list_entry_get_next(list_entry: ?*struct_udev_list_entry) ?*struct_udev_list_entry;
pub extern fn udev_list_entry_get_by_name(list_entry: ?*struct_udev_list_entry, name: [*c]const u8) ?*struct_udev_list_entry;
pub extern fn udev_list_entry_get_name(list_entry: ?*struct_udev_list_entry) [*c]const u8;
pub extern fn udev_list_entry_get_value(list_entry: ?*struct_udev_list_entry) [*c]const u8;
pub const struct_udev_device = opaque {
    pub const udev_device_ref = __root.udev_device_ref;
    pub const udev_device_unref = __root.udev_device_unref;
    pub const udev_device_get_udev = __root.udev_device_get_udev;
    pub const udev_device_get_parent = __root.udev_device_get_parent;
    pub const udev_device_get_parent_with_subsystem_devtype = __root.udev_device_get_parent_with_subsystem_devtype;
    pub const udev_device_get_devpath = __root.udev_device_get_devpath;
    pub const udev_device_get_subsystem = __root.udev_device_get_subsystem;
    pub const udev_device_get_devtype = __root.udev_device_get_devtype;
    pub const udev_device_get_syspath = __root.udev_device_get_syspath;
    pub const udev_device_get_sysname = __root.udev_device_get_sysname;
    pub const udev_device_get_sysnum = __root.udev_device_get_sysnum;
    pub const udev_device_get_devnode = __root.udev_device_get_devnode;
    pub const udev_device_get_is_initialized = __root.udev_device_get_is_initialized;
    pub const udev_device_get_devlinks_list_entry = __root.udev_device_get_devlinks_list_entry;
    pub const udev_device_get_properties_list_entry = __root.udev_device_get_properties_list_entry;
    pub const udev_device_get_tags_list_entry = __root.udev_device_get_tags_list_entry;
    pub const udev_device_get_current_tags_list_entry = __root.udev_device_get_current_tags_list_entry;
    pub const udev_device_get_sysattr_list_entry = __root.udev_device_get_sysattr_list_entry;
    pub const udev_device_get_property_value = __root.udev_device_get_property_value;
    pub const udev_device_get_driver = __root.udev_device_get_driver;
    pub const udev_device_get_devnum = __root.udev_device_get_devnum;
    pub const udev_device_get_action = __root.udev_device_get_action;
    pub const udev_device_get_seqnum = __root.udev_device_get_seqnum;
    pub const udev_device_get_usec_since_initialized = __root.udev_device_get_usec_since_initialized;
    pub const udev_device_get_sysattr_value = __root.udev_device_get_sysattr_value;
    pub const udev_device_set_sysattr_value = __root.udev_device_set_sysattr_value;
    pub const udev_device_has_tag = __root.udev_device_has_tag;
    pub const udev_device_has_current_tag = __root.udev_device_has_current_tag;
    pub const ref = __root.udev_device_ref;
    pub const unref = __root.udev_device_unref;
    pub const get_udev = __root.udev_device_get_udev;
    pub const get_parent = __root.udev_device_get_parent;
    pub const get_parent_with_subsystem_devtype = __root.udev_device_get_parent_with_subsystem_devtype;
    pub const get_devpath = __root.udev_device_get_devpath;
    pub const get_subsystem = __root.udev_device_get_subsystem;
    pub const get_devtype = __root.udev_device_get_devtype;
    pub const get_syspath = __root.udev_device_get_syspath;
    pub const get_sysname = __root.udev_device_get_sysname;
    pub const get_sysnum = __root.udev_device_get_sysnum;
    pub const get_devnode = __root.udev_device_get_devnode;
    pub const get_is_initialized = __root.udev_device_get_is_initialized;
    pub const get_devlinks_list_entry = __root.udev_device_get_devlinks_list_entry;
    pub const get_properties_list_entry = __root.udev_device_get_properties_list_entry;
    pub const get_tags_list_entry = __root.udev_device_get_tags_list_entry;
    pub const get_current_tags_list_entry = __root.udev_device_get_current_tags_list_entry;
    pub const get_sysattr_list_entry = __root.udev_device_get_sysattr_list_entry;
    pub const get_property_value = __root.udev_device_get_property_value;
    pub const get_driver = __root.udev_device_get_driver;
    pub const get_devnum = __root.udev_device_get_devnum;
    pub const get_action = __root.udev_device_get_action;
    pub const get_seqnum = __root.udev_device_get_seqnum;
    pub const get_usec_since_initialized = __root.udev_device_get_usec_since_initialized;
    pub const get_sysattr_value = __root.udev_device_get_sysattr_value;
    pub const set_sysattr_value = __root.udev_device_set_sysattr_value;
    pub const has_tag = __root.udev_device_has_tag;
    pub const has_current_tag = __root.udev_device_has_current_tag;
};
pub extern fn udev_device_ref(p: ?*struct_udev_device) ?*struct_udev_device;
pub extern fn udev_device_unref(p: ?*struct_udev_device) ?*struct_udev_device;
pub extern fn udev_device_get_udev(udev_device: ?*struct_udev_device) ?*struct_udev;
pub extern fn udev_device_new_from_syspath(udev: ?*struct_udev, syspath: [*c]const u8) ?*struct_udev_device;
pub extern fn udev_device_new_from_devnum(udev: ?*struct_udev, @"type": u8, devnum: dev_t) ?*struct_udev_device;
pub extern fn udev_device_new_from_subsystem_sysname(udev: ?*struct_udev, subsystem: [*c]const u8, sysname: [*c]const u8) ?*struct_udev_device;
pub extern fn udev_device_new_from_device_id(udev: ?*struct_udev, id: [*c]const u8) ?*struct_udev_device;
pub extern fn udev_device_new_from_environment(udev: ?*struct_udev) ?*struct_udev_device;
pub extern fn udev_device_get_parent(udev_device: ?*struct_udev_device) ?*struct_udev_device;
pub extern fn udev_device_get_parent_with_subsystem_devtype(udev_device: ?*struct_udev_device, subsystem: [*c]const u8, devtype: [*c]const u8) ?*struct_udev_device;
pub extern fn udev_device_get_devpath(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_subsystem(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_devtype(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_syspath(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_sysname(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_sysnum(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_devnode(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_is_initialized(udev_device: ?*struct_udev_device) c_int;
pub extern fn udev_device_get_devlinks_list_entry(udev_device: ?*struct_udev_device) ?*struct_udev_list_entry;
pub extern fn udev_device_get_properties_list_entry(udev_device: ?*struct_udev_device) ?*struct_udev_list_entry;
pub extern fn udev_device_get_tags_list_entry(udev_device: ?*struct_udev_device) ?*struct_udev_list_entry;
pub extern fn udev_device_get_current_tags_list_entry(udev_device: ?*struct_udev_device) ?*struct_udev_list_entry;
pub extern fn udev_device_get_sysattr_list_entry(udev_device: ?*struct_udev_device) ?*struct_udev_list_entry;
pub extern fn udev_device_get_property_value(udev_device: ?*struct_udev_device, key: [*c]const u8) [*c]const u8;
pub extern fn udev_device_get_driver(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_devnum(udev_device: ?*struct_udev_device) dev_t;
pub extern fn udev_device_get_action(udev_device: ?*struct_udev_device) [*c]const u8;
pub extern fn udev_device_get_seqnum(udev_device: ?*struct_udev_device) c_ulonglong;
pub extern fn udev_device_get_usec_since_initialized(udev_device: ?*struct_udev_device) c_ulonglong;
pub extern fn udev_device_get_sysattr_value(udev_device: ?*struct_udev_device, sysattr: [*c]const u8) [*c]const u8;
pub extern fn udev_device_set_sysattr_value(udev_device: ?*struct_udev_device, sysattr: [*c]const u8, value: [*c]const u8) c_int;
pub extern fn udev_device_has_tag(udev_device: ?*struct_udev_device, tag: [*c]const u8) c_int;
pub extern fn udev_device_has_current_tag(udev_device: ?*struct_udev_device, tag: [*c]const u8) c_int;
pub const struct_udev_monitor = opaque {
    pub const udev_monitor_ref = __root.udev_monitor_ref;
    pub const udev_monitor_unref = __root.udev_monitor_unref;
    pub const udev_monitor_get_udev = __root.udev_monitor_get_udev;
    pub const udev_monitor_enable_receiving = __root.udev_monitor_enable_receiving;
    pub const udev_monitor_set_receive_buffer_size = __root.udev_monitor_set_receive_buffer_size;
    pub const udev_monitor_get_fd = __root.udev_monitor_get_fd;
    pub const udev_monitor_receive_device = __root.udev_monitor_receive_device;
    pub const udev_monitor_filter_add_match_subsystem_devtype = __root.udev_monitor_filter_add_match_subsystem_devtype;
    pub const udev_monitor_filter_add_match_tag = __root.udev_monitor_filter_add_match_tag;
    pub const udev_monitor_filter_update = __root.udev_monitor_filter_update;
    pub const udev_monitor_filter_remove = __root.udev_monitor_filter_remove;
    pub const ref = __root.udev_monitor_ref;
    pub const unref = __root.udev_monitor_unref;
    pub const get_udev = __root.udev_monitor_get_udev;
    pub const enable_receiving = __root.udev_monitor_enable_receiving;
    pub const set_receive_buffer_size = __root.udev_monitor_set_receive_buffer_size;
    pub const get_fd = __root.udev_monitor_get_fd;
    pub const receive_device = __root.udev_monitor_receive_device;
    pub const filter_add_match_subsystem_devtype = __root.udev_monitor_filter_add_match_subsystem_devtype;
    pub const filter_add_match_tag = __root.udev_monitor_filter_add_match_tag;
    pub const filter_update = __root.udev_monitor_filter_update;
    pub const filter_remove = __root.udev_monitor_filter_remove;
};
pub extern fn udev_monitor_ref(p: ?*struct_udev_monitor) ?*struct_udev_monitor;
pub extern fn udev_monitor_unref(p: ?*struct_udev_monitor) ?*struct_udev_monitor;
pub extern fn udev_monitor_get_udev(udev_monitor: ?*struct_udev_monitor) ?*struct_udev;
pub extern fn udev_monitor_new_from_netlink(udev: ?*struct_udev, name: [*c]const u8) ?*struct_udev_monitor;
pub extern fn udev_monitor_enable_receiving(udev_monitor: ?*struct_udev_monitor) c_int;
pub extern fn udev_monitor_set_receive_buffer_size(udev_monitor: ?*struct_udev_monitor, size: c_int) c_int;
pub extern fn udev_monitor_get_fd(udev_monitor: ?*struct_udev_monitor) c_int;
pub extern fn udev_monitor_receive_device(udev_monitor: ?*struct_udev_monitor) ?*struct_udev_device;
pub extern fn udev_monitor_filter_add_match_subsystem_devtype(udev_monitor: ?*struct_udev_monitor, subsystem: [*c]const u8, devtype: [*c]const u8) c_int;
pub extern fn udev_monitor_filter_add_match_tag(udev_monitor: ?*struct_udev_monitor, tag: [*c]const u8) c_int;
pub extern fn udev_monitor_filter_update(udev_monitor: ?*struct_udev_monitor) c_int;
pub extern fn udev_monitor_filter_remove(udev_monitor: ?*struct_udev_monitor) c_int;
pub const struct_udev_enumerate = opaque {
    pub const udev_enumerate_ref = __root.udev_enumerate_ref;
    pub const udev_enumerate_unref = __root.udev_enumerate_unref;
    pub const udev_enumerate_get_udev = __root.udev_enumerate_get_udev;
    pub const udev_enumerate_add_match_subsystem = __root.udev_enumerate_add_match_subsystem;
    pub const udev_enumerate_add_nomatch_subsystem = __root.udev_enumerate_add_nomatch_subsystem;
    pub const udev_enumerate_add_match_sysattr = __root.udev_enumerate_add_match_sysattr;
    pub const udev_enumerate_add_nomatch_sysattr = __root.udev_enumerate_add_nomatch_sysattr;
    pub const udev_enumerate_add_match_property = __root.udev_enumerate_add_match_property;
    pub const udev_enumerate_add_match_sysname = __root.udev_enumerate_add_match_sysname;
    pub const udev_enumerate_add_match_tag = __root.udev_enumerate_add_match_tag;
    pub const udev_enumerate_add_match_parent = __root.udev_enumerate_add_match_parent;
    pub const udev_enumerate_add_match_is_initialized = __root.udev_enumerate_add_match_is_initialized;
    pub const udev_enumerate_add_syspath = __root.udev_enumerate_add_syspath;
    pub const udev_enumerate_scan_devices = __root.udev_enumerate_scan_devices;
    pub const udev_enumerate_scan_subsystems = __root.udev_enumerate_scan_subsystems;
    pub const udev_enumerate_get_list_entry = __root.udev_enumerate_get_list_entry;
    pub const ref = __root.udev_enumerate_ref;
    pub const unref = __root.udev_enumerate_unref;
    pub const get_udev = __root.udev_enumerate_get_udev;
    pub const add_match_subsystem = __root.udev_enumerate_add_match_subsystem;
    pub const add_nomatch_subsystem = __root.udev_enumerate_add_nomatch_subsystem;
    pub const add_match_sysattr = __root.udev_enumerate_add_match_sysattr;
    pub const add_nomatch_sysattr = __root.udev_enumerate_add_nomatch_sysattr;
    pub const add_match_property = __root.udev_enumerate_add_match_property;
    pub const add_match_sysname = __root.udev_enumerate_add_match_sysname;
    pub const add_match_tag = __root.udev_enumerate_add_match_tag;
    pub const add_match_parent = __root.udev_enumerate_add_match_parent;
    pub const add_match_is_initialized = __root.udev_enumerate_add_match_is_initialized;
    pub const add_syspath = __root.udev_enumerate_add_syspath;
    pub const scan_devices = __root.udev_enumerate_scan_devices;
    pub const scan_subsystems = __root.udev_enumerate_scan_subsystems;
    pub const get_list_entry = __root.udev_enumerate_get_list_entry;
};
pub extern fn udev_enumerate_ref(p: ?*struct_udev_enumerate) ?*struct_udev_enumerate;
pub extern fn udev_enumerate_unref(p: ?*struct_udev_enumerate) ?*struct_udev_enumerate;
pub extern fn udev_enumerate_get_udev(udev_enumerate: ?*struct_udev_enumerate) ?*struct_udev;
pub extern fn udev_enumerate_new(udev: ?*struct_udev) ?*struct_udev_enumerate;
pub extern fn udev_enumerate_add_match_subsystem(udev_enumerate: ?*struct_udev_enumerate, subsystem: [*c]const u8) c_int;
pub extern fn udev_enumerate_add_nomatch_subsystem(udev_enumerate: ?*struct_udev_enumerate, subsystem: [*c]const u8) c_int;
pub extern fn udev_enumerate_add_match_sysattr(udev_enumerate: ?*struct_udev_enumerate, sysattr: [*c]const u8, value: [*c]const u8) c_int;
pub extern fn udev_enumerate_add_nomatch_sysattr(udev_enumerate: ?*struct_udev_enumerate, sysattr: [*c]const u8, value: [*c]const u8) c_int;
pub extern fn udev_enumerate_add_match_property(udev_enumerate: ?*struct_udev_enumerate, property: [*c]const u8, value: [*c]const u8) c_int;
pub extern fn udev_enumerate_add_match_sysname(udev_enumerate: ?*struct_udev_enumerate, sysname: [*c]const u8) c_int;
pub extern fn udev_enumerate_add_match_tag(udev_enumerate: ?*struct_udev_enumerate, tag: [*c]const u8) c_int;
pub extern fn udev_enumerate_add_match_parent(udev_enumerate: ?*struct_udev_enumerate, parent: ?*struct_udev_device) c_int;
pub extern fn udev_enumerate_add_match_is_initialized(udev_enumerate: ?*struct_udev_enumerate) c_int;
pub extern fn udev_enumerate_add_syspath(udev_enumerate: ?*struct_udev_enumerate, syspath: [*c]const u8) c_int;
pub extern fn udev_enumerate_scan_devices(udev_enumerate: ?*struct_udev_enumerate) c_int;
pub extern fn udev_enumerate_scan_subsystems(udev_enumerate: ?*struct_udev_enumerate) c_int;
pub extern fn udev_enumerate_get_list_entry(udev_enumerate: ?*struct_udev_enumerate) ?*struct_udev_list_entry;
pub const struct_udev_queue = opaque {
    pub const udev_queue_ref = __root.udev_queue_ref;
    pub const udev_queue_unref = __root.udev_queue_unref;
    pub const udev_queue_get_udev = __root.udev_queue_get_udev;
    pub const udev_queue_get_kernel_seqnum = __root.udev_queue_get_kernel_seqnum;
    pub const udev_queue_get_udev_seqnum = __root.udev_queue_get_udev_seqnum;
    pub const udev_queue_get_udev_is_active = __root.udev_queue_get_udev_is_active;
    pub const udev_queue_get_queue_is_empty = __root.udev_queue_get_queue_is_empty;
    pub const udev_queue_get_seqnum_is_finished = __root.udev_queue_get_seqnum_is_finished;
    pub const udev_queue_get_seqnum_sequence_is_finished = __root.udev_queue_get_seqnum_sequence_is_finished;
    pub const udev_queue_get_fd = __root.udev_queue_get_fd;
    pub const udev_queue_flush = __root.udev_queue_flush;
    pub const udev_queue_get_queued_list_entry = __root.udev_queue_get_queued_list_entry;
    pub const ref = __root.udev_queue_ref;
    pub const unref = __root.udev_queue_unref;
    pub const get_udev = __root.udev_queue_get_udev;
    pub const get_kernel_seqnum = __root.udev_queue_get_kernel_seqnum;
    pub const get_udev_seqnum = __root.udev_queue_get_udev_seqnum;
    pub const get_udev_is_active = __root.udev_queue_get_udev_is_active;
    pub const get_queue_is_empty = __root.udev_queue_get_queue_is_empty;
    pub const get_seqnum_is_finished = __root.udev_queue_get_seqnum_is_finished;
    pub const get_seqnum_sequence_is_finished = __root.udev_queue_get_seqnum_sequence_is_finished;
    pub const get_fd = __root.udev_queue_get_fd;
    pub const flush = __root.udev_queue_flush;
    pub const get_queued_list_entry = __root.udev_queue_get_queued_list_entry;
};
pub extern fn udev_queue_ref(p: ?*struct_udev_queue) ?*struct_udev_queue;
pub extern fn udev_queue_unref(p: ?*struct_udev_queue) ?*struct_udev_queue;
pub extern fn udev_queue_get_udev(udev_queue: ?*struct_udev_queue) ?*struct_udev;
pub extern fn udev_queue_new(udev: ?*struct_udev) ?*struct_udev_queue;
pub extern fn udev_queue_get_kernel_seqnum(udev_queue: ?*struct_udev_queue) c_ulonglong;
pub extern fn udev_queue_get_udev_seqnum(udev_queue: ?*struct_udev_queue) c_ulonglong;
pub extern fn udev_queue_get_udev_is_active(udev_queue: ?*struct_udev_queue) c_int;
pub extern fn udev_queue_get_queue_is_empty(udev_queue: ?*struct_udev_queue) c_int;
pub extern fn udev_queue_get_seqnum_is_finished(udev_queue: ?*struct_udev_queue, seqnum: c_ulonglong) c_int;
pub extern fn udev_queue_get_seqnum_sequence_is_finished(udev_queue: ?*struct_udev_queue, start: c_ulonglong, end: c_ulonglong) c_int;
pub extern fn udev_queue_get_fd(udev_queue: ?*struct_udev_queue) c_int;
pub extern fn udev_queue_flush(udev_queue: ?*struct_udev_queue) c_int;
pub extern fn udev_queue_get_queued_list_entry(udev_queue: ?*struct_udev_queue) ?*struct_udev_list_entry;
pub const struct_udev_hwdb = opaque {
    pub const udev_hwdb_ref = __root.udev_hwdb_ref;
    pub const udev_hwdb_unref = __root.udev_hwdb_unref;
    pub const udev_hwdb_get_properties_list_entry = __root.udev_hwdb_get_properties_list_entry;
    pub const ref = __root.udev_hwdb_ref;
    pub const unref = __root.udev_hwdb_unref;
    pub const get_properties_list_entry = __root.udev_hwdb_get_properties_list_entry;
};
pub extern fn udev_hwdb_new(udev: ?*struct_udev) ?*struct_udev_hwdb;
pub extern fn udev_hwdb_ref(p: ?*struct_udev_hwdb) ?*struct_udev_hwdb;
pub extern fn udev_hwdb_unref(p: ?*struct_udev_hwdb) ?*struct_udev_hwdb;
pub extern fn udev_hwdb_get_properties_list_entry(hwdb: ?*struct_udev_hwdb, modalias: [*c]const u8, flags: c_uint) ?*struct_udev_list_entry;
pub extern fn udev_util_encode_string(str: [*c]const u8, str_enc: [*c]u8, len: usize) c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const div_t = extern struct {
    quot: c_int = 0,
    rem: c_int = 0,
};
pub const ldiv_t = extern struct {
    quot: c_long = 0,
    rem: c_long = 0,
};
pub const lldiv_t = extern struct {
    quot: c_longlong = 0,
    rem: c_longlong = 0,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f64;
pub extern fn strtof(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) f32;
pub extern fn strtold(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = null,
    rptr: [*c]i32 = null,
    state: [*c]i32 = null,
    rand_type: c_int = 0,
    rand_deg: c_int = 0,
    rand_sep: c_int = 0,
    end_ptr: [*c]i32 = null,
    pub const random_r = __root.random_r;
    pub const r = __root.random_r;
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = 0,
    __init: c_ushort = 0,
    __a: c_ulonglong = 0,
    pub const drand48_r = __root.drand48_r;
    pub const lrand48_r = __root.lrand48_r;
    pub const mrand48_r = __root.mrand48_r;
    pub const r = __root.drand48_r;
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
pub extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
pub extern fn malloc(__size: usize) ?*anyopaque;
pub extern fn calloc(__nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: usize) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: usize) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: usize, __size: usize) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn on_exit(__func: ?*const fn (__status: c_int, __arg: ?*anyopaque) callconv(.c) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const struct_libinput = opaque {
    pub const libinput_udev_assign_seat = __root.libinput_udev_assign_seat;
    pub const libinput_path_add_device = __root.libinput_path_add_device;
    pub const libinput_plugin_system_append_path = __root.libinput_plugin_system_append_path;
    pub const libinput_plugin_system_append_default_paths = __root.libinput_plugin_system_append_default_paths;
    pub const libinput_plugin_system_load_plugins = __root.libinput_plugin_system_load_plugins;
    pub const libinput_get_fd = __root.libinput_get_fd;
    pub const libinput_dispatch = __root.libinput_dispatch;
    pub const libinput_get_event = __root.libinput_get_event;
    pub const libinput_next_event_type = __root.libinput_next_event_type;
    pub const libinput_set_user_data = __root.libinput_set_user_data;
    pub const libinput_get_user_data = __root.libinput_get_user_data;
    pub const libinput_resume = __root.libinput_resume;
    pub const libinput_suspend = __root.libinput_suspend;
    pub const libinput_ref = __root.libinput_ref;
    pub const libinput_unref = __root.libinput_unref;
    pub const libinput_log_set_priority = __root.libinput_log_set_priority;
    pub const libinput_log_get_priority = __root.libinput_log_get_priority;
    pub const libinput_log_set_handler = __root.libinput_log_set_handler;
    pub const udev_assign_seat = __root.libinput_udev_assign_seat;
    pub const path_add_device = __root.libinput_path_add_device;
    pub const plugin_system_append_path = __root.libinput_plugin_system_append_path;
    pub const plugin_system_append_default_paths = __root.libinput_plugin_system_append_default_paths;
    pub const plugin_system_load_plugins = __root.libinput_plugin_system_load_plugins;
    pub const get_fd = __root.libinput_get_fd;
    pub const dispatch = __root.libinput_dispatch;
    pub const get_event = __root.libinput_get_event;
    pub const next_event_type = __root.libinput_next_event_type;
    pub const set_user_data = __root.libinput_set_user_data;
    pub const get_user_data = __root.libinput_get_user_data;
    pub const @"resume" = __root.libinput_resume;
    pub const @"suspend" = __root.libinput_suspend;
    pub const ref = __root.libinput_ref;
    pub const unref = __root.libinput_unref;
    pub const log_set_priority = __root.libinput_log_set_priority;
    pub const log_get_priority = __root.libinput_log_get_priority;
    pub const log_set_handler = __root.libinput_log_set_handler;
};
pub const struct_libinput_device = opaque {
    pub const libinput_device_tablet_pad_get_num_mode_groups = __root.libinput_device_tablet_pad_get_num_mode_groups;
    pub const libinput_device_tablet_pad_get_mode_group = __root.libinput_device_tablet_pad_get_mode_group;
    pub const libinput_path_remove_device = __root.libinput_path_remove_device;
    pub const libinput_device_ref = __root.libinput_device_ref;
    pub const libinput_device_unref = __root.libinput_device_unref;
    pub const libinput_device_set_user_data = __root.libinput_device_set_user_data;
    pub const libinput_device_get_user_data = __root.libinput_device_get_user_data;
    pub const libinput_device_get_context = __root.libinput_device_get_context;
    pub const libinput_device_get_device_group = __root.libinput_device_get_device_group;
    pub const libinput_device_get_sysname = __root.libinput_device_get_sysname;
    pub const libinput_device_get_name = __root.libinput_device_get_name;
    pub const libinput_device_get_id_bustype = __root.libinput_device_get_id_bustype;
    pub const libinput_device_get_id_product = __root.libinput_device_get_id_product;
    pub const libinput_device_get_id_vendor = __root.libinput_device_get_id_vendor;
    pub const libinput_device_get_output_name = __root.libinput_device_get_output_name;
    pub const libinput_device_get_seat = __root.libinput_device_get_seat;
    pub const libinput_device_set_seat_logical_name = __root.libinput_device_set_seat_logical_name;
    pub const libinput_device_get_udev_device = __root.libinput_device_get_udev_device;
    pub const libinput_device_led_update = __root.libinput_device_led_update;
    pub const libinput_device_has_capability = __root.libinput_device_has_capability;
    pub const libinput_device_get_size = __root.libinput_device_get_size;
    pub const libinput_device_pointer_has_button = __root.libinput_device_pointer_has_button;
    pub const libinput_device_keyboard_has_key = __root.libinput_device_keyboard_has_key;
    pub const libinput_device_touch_get_touch_count = __root.libinput_device_touch_get_touch_count;
    pub const libinput_device_switch_has_switch = __root.libinput_device_switch_has_switch;
    pub const libinput_device_tablet_pad_get_num_buttons = __root.libinput_device_tablet_pad_get_num_buttons;
    pub const libinput_device_tablet_pad_get_num_dials = __root.libinput_device_tablet_pad_get_num_dials;
    pub const libinput_device_tablet_pad_get_num_rings = __root.libinput_device_tablet_pad_get_num_rings;
    pub const libinput_device_tablet_pad_get_num_strips = __root.libinput_device_tablet_pad_get_num_strips;
    pub const libinput_device_tablet_pad_has_key = __root.libinput_device_tablet_pad_has_key;
    pub const libinput_device_config_tap_get_finger_count = __root.libinput_device_config_tap_get_finger_count;
    pub const libinput_device_config_tap_set_enabled = __root.libinput_device_config_tap_set_enabled;
    pub const libinput_device_config_tap_get_enabled = __root.libinput_device_config_tap_get_enabled;
    pub const libinput_device_config_tap_get_default_enabled = __root.libinput_device_config_tap_get_default_enabled;
    pub const libinput_device_config_tap_set_button_map = __root.libinput_device_config_tap_set_button_map;
    pub const libinput_device_config_tap_get_button_map = __root.libinput_device_config_tap_get_button_map;
    pub const libinput_device_config_tap_get_default_button_map = __root.libinput_device_config_tap_get_default_button_map;
    pub const libinput_device_config_tap_set_drag_enabled = __root.libinput_device_config_tap_set_drag_enabled;
    pub const libinput_device_config_tap_get_drag_enabled = __root.libinput_device_config_tap_get_drag_enabled;
    pub const libinput_device_config_tap_get_default_drag_enabled = __root.libinput_device_config_tap_get_default_drag_enabled;
    pub const libinput_device_config_tap_set_drag_lock_enabled = __root.libinput_device_config_tap_set_drag_lock_enabled;
    pub const libinput_device_config_tap_get_drag_lock_enabled = __root.libinput_device_config_tap_get_drag_lock_enabled;
    pub const libinput_device_config_tap_get_default_drag_lock_enabled = __root.libinput_device_config_tap_get_default_drag_lock_enabled;
    pub const libinput_device_config_3fg_drag_get_finger_count = __root.libinput_device_config_3fg_drag_get_finger_count;
    pub const libinput_device_config_3fg_drag_set_enabled = __root.libinput_device_config_3fg_drag_set_enabled;
    pub const libinput_device_config_3fg_drag_get_enabled = __root.libinput_device_config_3fg_drag_get_enabled;
    pub const libinput_device_config_3fg_drag_get_default_enabled = __root.libinput_device_config_3fg_drag_get_default_enabled;
    pub const libinput_device_config_calibration_has_matrix = __root.libinput_device_config_calibration_has_matrix;
    pub const libinput_device_config_calibration_set_matrix = __root.libinput_device_config_calibration_set_matrix;
    pub const libinput_device_config_calibration_get_matrix = __root.libinput_device_config_calibration_get_matrix;
    pub const libinput_device_config_calibration_get_default_matrix = __root.libinput_device_config_calibration_get_default_matrix;
    pub const libinput_device_config_area_has_rectangle = __root.libinput_device_config_area_has_rectangle;
    pub const libinput_device_config_area_set_rectangle = __root.libinput_device_config_area_set_rectangle;
    pub const libinput_device_config_area_get_rectangle = __root.libinput_device_config_area_get_rectangle;
    pub const libinput_device_config_area_get_default_rectangle = __root.libinput_device_config_area_get_default_rectangle;
    pub const libinput_device_config_send_events_get_modes = __root.libinput_device_config_send_events_get_modes;
    pub const libinput_device_config_send_events_set_mode = __root.libinput_device_config_send_events_set_mode;
    pub const libinput_device_config_send_events_get_mode = __root.libinput_device_config_send_events_get_mode;
    pub const libinput_device_config_send_events_get_default_mode = __root.libinput_device_config_send_events_get_default_mode;
    pub const libinput_device_config_accel_is_available = __root.libinput_device_config_accel_is_available;
    pub const libinput_device_config_accel_set_speed = __root.libinput_device_config_accel_set_speed;
    pub const libinput_device_config_accel_get_speed = __root.libinput_device_config_accel_get_speed;
    pub const libinput_device_config_accel_get_default_speed = __root.libinput_device_config_accel_get_default_speed;
    pub const libinput_device_config_accel_apply = __root.libinput_device_config_accel_apply;
    pub const libinput_device_config_accel_get_profiles = __root.libinput_device_config_accel_get_profiles;
    pub const libinput_device_config_accel_set_profile = __root.libinput_device_config_accel_set_profile;
    pub const libinput_device_config_accel_get_profile = __root.libinput_device_config_accel_get_profile;
    pub const libinput_device_config_accel_get_default_profile = __root.libinput_device_config_accel_get_default_profile;
    pub const libinput_device_config_scroll_has_natural_scroll = __root.libinput_device_config_scroll_has_natural_scroll;
    pub const libinput_device_config_scroll_set_natural_scroll_enabled = __root.libinput_device_config_scroll_set_natural_scroll_enabled;
    pub const libinput_device_config_scroll_get_natural_scroll_enabled = __root.libinput_device_config_scroll_get_natural_scroll_enabled;
    pub const libinput_device_config_scroll_get_default_natural_scroll_enabled = __root.libinput_device_config_scroll_get_default_natural_scroll_enabled;
    pub const libinput_device_config_left_handed_is_available = __root.libinput_device_config_left_handed_is_available;
    pub const libinput_device_config_left_handed_set = __root.libinput_device_config_left_handed_set;
    pub const libinput_device_config_left_handed_get = __root.libinput_device_config_left_handed_get;
    pub const libinput_device_config_left_handed_get_default = __root.libinput_device_config_left_handed_get_default;
    pub const libinput_device_config_click_get_methods = __root.libinput_device_config_click_get_methods;
    pub const libinput_device_config_click_set_method = __root.libinput_device_config_click_set_method;
    pub const libinput_device_config_click_get_method = __root.libinput_device_config_click_get_method;
    pub const libinput_device_config_click_get_default_method = __root.libinput_device_config_click_get_default_method;
    pub const libinput_device_config_click_set_clickfinger_button_map = __root.libinput_device_config_click_set_clickfinger_button_map;
    pub const libinput_device_config_click_get_clickfinger_button_map = __root.libinput_device_config_click_get_clickfinger_button_map;
    pub const libinput_device_config_click_get_default_clickfinger_button_map = __root.libinput_device_config_click_get_default_clickfinger_button_map;
    pub const libinput_device_config_middle_emulation_is_available = __root.libinput_device_config_middle_emulation_is_available;
    pub const libinput_device_config_middle_emulation_set_enabled = __root.libinput_device_config_middle_emulation_set_enabled;
    pub const libinput_device_config_middle_emulation_get_enabled = __root.libinput_device_config_middle_emulation_get_enabled;
    pub const libinput_device_config_middle_emulation_get_default_enabled = __root.libinput_device_config_middle_emulation_get_default_enabled;
    pub const libinput_device_config_scroll_get_methods = __root.libinput_device_config_scroll_get_methods;
    pub const libinput_device_config_scroll_set_method = __root.libinput_device_config_scroll_set_method;
    pub const libinput_device_config_scroll_get_method = __root.libinput_device_config_scroll_get_method;
    pub const libinput_device_config_scroll_get_default_method = __root.libinput_device_config_scroll_get_default_method;
    pub const libinput_device_config_scroll_set_button = __root.libinput_device_config_scroll_set_button;
    pub const libinput_device_config_scroll_get_button = __root.libinput_device_config_scroll_get_button;
    pub const libinput_device_config_scroll_get_default_button = __root.libinput_device_config_scroll_get_default_button;
    pub const libinput_device_config_scroll_set_button_lock = __root.libinput_device_config_scroll_set_button_lock;
    pub const libinput_device_config_scroll_get_button_lock = __root.libinput_device_config_scroll_get_button_lock;
    pub const libinput_device_config_scroll_get_default_button_lock = __root.libinput_device_config_scroll_get_default_button_lock;
    pub const libinput_device_config_dwt_is_available = __root.libinput_device_config_dwt_is_available;
    pub const libinput_device_config_dwt_set_enabled = __root.libinput_device_config_dwt_set_enabled;
    pub const libinput_device_config_dwt_get_enabled = __root.libinput_device_config_dwt_get_enabled;
    pub const libinput_device_config_dwt_get_default_enabled = __root.libinput_device_config_dwt_get_default_enabled;
    pub const libinput_device_config_dwt_set_timeout = __root.libinput_device_config_dwt_set_timeout;
    pub const libinput_device_config_dwt_get_timeout = __root.libinput_device_config_dwt_get_timeout;
    pub const libinput_device_config_dwt_get_default_timeout = __root.libinput_device_config_dwt_get_default_timeout;
    pub const libinput_device_config_dwtp_is_available = __root.libinput_device_config_dwtp_is_available;
    pub const libinput_device_config_dwtp_set_enabled = __root.libinput_device_config_dwtp_set_enabled;
    pub const libinput_device_config_dwtp_get_enabled = __root.libinput_device_config_dwtp_get_enabled;
    pub const libinput_device_config_dwtp_get_default_enabled = __root.libinput_device_config_dwtp_get_default_enabled;
    pub const libinput_device_config_dwtp_set_timeout = __root.libinput_device_config_dwtp_set_timeout;
    pub const libinput_device_config_dwtp_get_timeout = __root.libinput_device_config_dwtp_get_timeout;
    pub const libinput_device_config_dwtp_get_default_timeout = __root.libinput_device_config_dwtp_get_default_timeout;
    pub const libinput_device_config_rotation_is_available = __root.libinput_device_config_rotation_is_available;
    pub const libinput_device_config_rotation_set_angle = __root.libinput_device_config_rotation_set_angle;
    pub const libinput_device_config_rotation_get_angle = __root.libinput_device_config_rotation_get_angle;
    pub const libinput_device_config_rotation_get_default_angle = __root.libinput_device_config_rotation_get_default_angle;
    pub const tablet_pad_get_num_mode_groups = __root.libinput_device_tablet_pad_get_num_mode_groups;
    pub const tablet_pad_get_mode_group = __root.libinput_device_tablet_pad_get_mode_group;
    pub const device = __root.libinput_path_remove_device;
    pub const ref = __root.libinput_device_ref;
    pub const unref = __root.libinput_device_unref;
    pub const set_user_data = __root.libinput_device_set_user_data;
    pub const get_user_data = __root.libinput_device_get_user_data;
    pub const get_context = __root.libinput_device_get_context;
    pub const get_device_group = __root.libinput_device_get_device_group;
    pub const get_sysname = __root.libinput_device_get_sysname;
    pub const get_name = __root.libinput_device_get_name;
    pub const get_id_bustype = __root.libinput_device_get_id_bustype;
    pub const get_id_product = __root.libinput_device_get_id_product;
    pub const get_id_vendor = __root.libinput_device_get_id_vendor;
    pub const get_output_name = __root.libinput_device_get_output_name;
    pub const get_seat = __root.libinput_device_get_seat;
    pub const set_seat_logical_name = __root.libinput_device_set_seat_logical_name;
    pub const get_udev_device = __root.libinput_device_get_udev_device;
    pub const led_update = __root.libinput_device_led_update;
    pub const has_capability = __root.libinput_device_has_capability;
    pub const get_size = __root.libinput_device_get_size;
    pub const pointer_has_button = __root.libinput_device_pointer_has_button;
    pub const keyboard_has_key = __root.libinput_device_keyboard_has_key;
    pub const touch_get_touch_count = __root.libinput_device_touch_get_touch_count;
    pub const switch_has_switch = __root.libinput_device_switch_has_switch;
    pub const tablet_pad_get_num_buttons = __root.libinput_device_tablet_pad_get_num_buttons;
    pub const tablet_pad_get_num_dials = __root.libinput_device_tablet_pad_get_num_dials;
    pub const tablet_pad_get_num_rings = __root.libinput_device_tablet_pad_get_num_rings;
    pub const tablet_pad_get_num_strips = __root.libinput_device_tablet_pad_get_num_strips;
    pub const tablet_pad_has_key = __root.libinput_device_tablet_pad_has_key;
    pub const config_tap_get_finger_count = __root.libinput_device_config_tap_get_finger_count;
    pub const config_tap_set_enabled = __root.libinput_device_config_tap_set_enabled;
    pub const config_tap_get_enabled = __root.libinput_device_config_tap_get_enabled;
    pub const config_tap_get_default_enabled = __root.libinput_device_config_tap_get_default_enabled;
    pub const config_tap_set_button_map = __root.libinput_device_config_tap_set_button_map;
    pub const config_tap_get_button_map = __root.libinput_device_config_tap_get_button_map;
    pub const config_tap_get_default_button_map = __root.libinput_device_config_tap_get_default_button_map;
    pub const config_tap_set_drag_enabled = __root.libinput_device_config_tap_set_drag_enabled;
    pub const config_tap_get_drag_enabled = __root.libinput_device_config_tap_get_drag_enabled;
    pub const config_tap_get_default_drag_enabled = __root.libinput_device_config_tap_get_default_drag_enabled;
    pub const config_tap_set_drag_lock_enabled = __root.libinput_device_config_tap_set_drag_lock_enabled;
    pub const config_tap_get_drag_lock_enabled = __root.libinput_device_config_tap_get_drag_lock_enabled;
    pub const config_tap_get_default_drag_lock_enabled = __root.libinput_device_config_tap_get_default_drag_lock_enabled;
    pub const config_3fg_drag_get_finger_count = __root.libinput_device_config_3fg_drag_get_finger_count;
    pub const config_3fg_drag_set_enabled = __root.libinput_device_config_3fg_drag_set_enabled;
    pub const config_3fg_drag_get_enabled = __root.libinput_device_config_3fg_drag_get_enabled;
    pub const config_3fg_drag_get_default_enabled = __root.libinput_device_config_3fg_drag_get_default_enabled;
    pub const config_calibration_has_matrix = __root.libinput_device_config_calibration_has_matrix;
    pub const config_calibration_set_matrix = __root.libinput_device_config_calibration_set_matrix;
    pub const config_calibration_get_matrix = __root.libinput_device_config_calibration_get_matrix;
    pub const config_calibration_get_default_matrix = __root.libinput_device_config_calibration_get_default_matrix;
    pub const config_area_has_rectangle = __root.libinput_device_config_area_has_rectangle;
    pub const config_area_set_rectangle = __root.libinput_device_config_area_set_rectangle;
    pub const config_area_get_rectangle = __root.libinput_device_config_area_get_rectangle;
    pub const config_area_get_default_rectangle = __root.libinput_device_config_area_get_default_rectangle;
    pub const config_send_events_get_modes = __root.libinput_device_config_send_events_get_modes;
    pub const config_send_events_set_mode = __root.libinput_device_config_send_events_set_mode;
    pub const config_send_events_get_mode = __root.libinput_device_config_send_events_get_mode;
    pub const config_send_events_get_default_mode = __root.libinput_device_config_send_events_get_default_mode;
    pub const config_accel_is_available = __root.libinput_device_config_accel_is_available;
    pub const config_accel_set_speed = __root.libinput_device_config_accel_set_speed;
    pub const config_accel_get_speed = __root.libinput_device_config_accel_get_speed;
    pub const config_accel_get_default_speed = __root.libinput_device_config_accel_get_default_speed;
    pub const config_accel_apply = __root.libinput_device_config_accel_apply;
    pub const config_accel_get_profiles = __root.libinput_device_config_accel_get_profiles;
    pub const config_accel_set_profile = __root.libinput_device_config_accel_set_profile;
    pub const config_accel_get_profile = __root.libinput_device_config_accel_get_profile;
    pub const config_accel_get_default_profile = __root.libinput_device_config_accel_get_default_profile;
    pub const config_scroll_has_natural_scroll = __root.libinput_device_config_scroll_has_natural_scroll;
    pub const config_scroll_set_natural_scroll_enabled = __root.libinput_device_config_scroll_set_natural_scroll_enabled;
    pub const config_scroll_get_natural_scroll_enabled = __root.libinput_device_config_scroll_get_natural_scroll_enabled;
    pub const config_scroll_get_default_natural_scroll_enabled = __root.libinput_device_config_scroll_get_default_natural_scroll_enabled;
    pub const config_left_handed_is_available = __root.libinput_device_config_left_handed_is_available;
    pub const config_left_handed_set = __root.libinput_device_config_left_handed_set;
    pub const config_left_handed_get = __root.libinput_device_config_left_handed_get;
    pub const config_left_handed_get_default = __root.libinput_device_config_left_handed_get_default;
    pub const config_click_get_methods = __root.libinput_device_config_click_get_methods;
    pub const config_click_set_method = __root.libinput_device_config_click_set_method;
    pub const config_click_get_method = __root.libinput_device_config_click_get_method;
    pub const config_click_get_default_method = __root.libinput_device_config_click_get_default_method;
    pub const config_click_set_clickfinger_button_map = __root.libinput_device_config_click_set_clickfinger_button_map;
    pub const config_click_get_clickfinger_button_map = __root.libinput_device_config_click_get_clickfinger_button_map;
    pub const config_click_get_default_clickfinger_button_map = __root.libinput_device_config_click_get_default_clickfinger_button_map;
    pub const config_middle_emulation_is_available = __root.libinput_device_config_middle_emulation_is_available;
    pub const config_middle_emulation_set_enabled = __root.libinput_device_config_middle_emulation_set_enabled;
    pub const config_middle_emulation_get_enabled = __root.libinput_device_config_middle_emulation_get_enabled;
    pub const config_middle_emulation_get_default_enabled = __root.libinput_device_config_middle_emulation_get_default_enabled;
    pub const config_scroll_get_methods = __root.libinput_device_config_scroll_get_methods;
    pub const config_scroll_set_method = __root.libinput_device_config_scroll_set_method;
    pub const config_scroll_get_method = __root.libinput_device_config_scroll_get_method;
    pub const config_scroll_get_default_method = __root.libinput_device_config_scroll_get_default_method;
    pub const config_scroll_set_button = __root.libinput_device_config_scroll_set_button;
    pub const config_scroll_get_button = __root.libinput_device_config_scroll_get_button;
    pub const config_scroll_get_default_button = __root.libinput_device_config_scroll_get_default_button;
    pub const config_scroll_set_button_lock = __root.libinput_device_config_scroll_set_button_lock;
    pub const config_scroll_get_button_lock = __root.libinput_device_config_scroll_get_button_lock;
    pub const config_scroll_get_default_button_lock = __root.libinput_device_config_scroll_get_default_button_lock;
    pub const config_dwt_is_available = __root.libinput_device_config_dwt_is_available;
    pub const config_dwt_set_enabled = __root.libinput_device_config_dwt_set_enabled;
    pub const config_dwt_get_enabled = __root.libinput_device_config_dwt_get_enabled;
    pub const config_dwt_get_default_enabled = __root.libinput_device_config_dwt_get_default_enabled;
    pub const config_dwt_set_timeout = __root.libinput_device_config_dwt_set_timeout;
    pub const config_dwt_get_timeout = __root.libinput_device_config_dwt_get_timeout;
    pub const config_dwt_get_default_timeout = __root.libinput_device_config_dwt_get_default_timeout;
    pub const config_dwtp_is_available = __root.libinput_device_config_dwtp_is_available;
    pub const config_dwtp_set_enabled = __root.libinput_device_config_dwtp_set_enabled;
    pub const config_dwtp_get_enabled = __root.libinput_device_config_dwtp_get_enabled;
    pub const config_dwtp_get_default_enabled = __root.libinput_device_config_dwtp_get_default_enabled;
    pub const config_dwtp_set_timeout = __root.libinput_device_config_dwtp_set_timeout;
    pub const config_dwtp_get_timeout = __root.libinput_device_config_dwtp_get_timeout;
    pub const config_dwtp_get_default_timeout = __root.libinput_device_config_dwtp_get_default_timeout;
    pub const config_rotation_is_available = __root.libinput_device_config_rotation_is_available;
    pub const config_rotation_set_angle = __root.libinput_device_config_rotation_set_angle;
    pub const config_rotation_get_angle = __root.libinput_device_config_rotation_get_angle;
    pub const config_rotation_get_default_angle = __root.libinput_device_config_rotation_get_default_angle;
};
pub const struct_libinput_device_group = opaque {
    pub const libinput_device_group_ref = __root.libinput_device_group_ref;
    pub const libinput_device_group_unref = __root.libinput_device_group_unref;
    pub const libinput_device_group_set_user_data = __root.libinput_device_group_set_user_data;
    pub const libinput_device_group_get_user_data = __root.libinput_device_group_get_user_data;
    pub const ref = __root.libinput_device_group_ref;
    pub const unref = __root.libinput_device_group_unref;
    pub const set_user_data = __root.libinput_device_group_set_user_data;
    pub const get_user_data = __root.libinput_device_group_get_user_data;
};
pub const struct_libinput_seat = opaque {
    pub const libinput_seat_ref = __root.libinput_seat_ref;
    pub const libinput_seat_unref = __root.libinput_seat_unref;
    pub const libinput_seat_set_user_data = __root.libinput_seat_set_user_data;
    pub const libinput_seat_get_user_data = __root.libinput_seat_get_user_data;
    pub const libinput_seat_get_context = __root.libinput_seat_get_context;
    pub const libinput_seat_get_physical_name = __root.libinput_seat_get_physical_name;
    pub const libinput_seat_get_logical_name = __root.libinput_seat_get_logical_name;
    pub const ref = __root.libinput_seat_ref;
    pub const unref = __root.libinput_seat_unref;
    pub const set_user_data = __root.libinput_seat_set_user_data;
    pub const get_user_data = __root.libinput_seat_get_user_data;
    pub const get_context = __root.libinput_seat_get_context;
    pub const get_physical_name = __root.libinput_seat_get_physical_name;
    pub const get_logical_name = __root.libinput_seat_get_logical_name;
};
pub const struct_libinput_tablet_tool = opaque {
    pub const libinput_tablet_tool_get_type = __root.libinput_tablet_tool_get_type;
    pub const libinput_tablet_tool_get_tool_id = __root.libinput_tablet_tool_get_tool_id;
    pub const libinput_tablet_tool_get_name = __root.libinput_tablet_tool_get_name;
    pub const libinput_tablet_tool_ref = __root.libinput_tablet_tool_ref;
    pub const libinput_tablet_tool_unref = __root.libinput_tablet_tool_unref;
    pub const libinput_tablet_tool_has_pressure = __root.libinput_tablet_tool_has_pressure;
    pub const libinput_tablet_tool_has_distance = __root.libinput_tablet_tool_has_distance;
    pub const libinput_tablet_tool_has_tilt = __root.libinput_tablet_tool_has_tilt;
    pub const libinput_tablet_tool_has_rotation = __root.libinput_tablet_tool_has_rotation;
    pub const libinput_tablet_tool_has_slider = __root.libinput_tablet_tool_has_slider;
    pub const libinput_tablet_tool_has_size = __root.libinput_tablet_tool_has_size;
    pub const libinput_tablet_tool_has_wheel = __root.libinput_tablet_tool_has_wheel;
    pub const libinput_tablet_tool_has_button = __root.libinput_tablet_tool_has_button;
    pub const libinput_tablet_tool_is_unique = __root.libinput_tablet_tool_is_unique;
    pub const libinput_tablet_tool_get_serial = __root.libinput_tablet_tool_get_serial;
    pub const libinput_tablet_tool_get_user_data = __root.libinput_tablet_tool_get_user_data;
    pub const libinput_tablet_tool_set_user_data = __root.libinput_tablet_tool_set_user_data;
    pub const libinput_tablet_tool_config_pressure_range_is_available = __root.libinput_tablet_tool_config_pressure_range_is_available;
    pub const libinput_tablet_tool_config_pressure_range_set = __root.libinput_tablet_tool_config_pressure_range_set;
    pub const libinput_tablet_tool_config_pressure_range_get_minimum = __root.libinput_tablet_tool_config_pressure_range_get_minimum;
    pub const libinput_tablet_tool_config_pressure_range_get_maximum = __root.libinput_tablet_tool_config_pressure_range_get_maximum;
    pub const libinput_tablet_tool_config_pressure_range_get_default_minimum = __root.libinput_tablet_tool_config_pressure_range_get_default_minimum;
    pub const libinput_tablet_tool_config_pressure_range_get_default_maximum = __root.libinput_tablet_tool_config_pressure_range_get_default_maximum;
    pub const libinput_tablet_tool_config_eraser_button_get_modes = __root.libinput_tablet_tool_config_eraser_button_get_modes;
    pub const libinput_tablet_tool_config_eraser_button_set_mode = __root.libinput_tablet_tool_config_eraser_button_set_mode;
    pub const libinput_tablet_tool_config_eraser_button_get_mode = __root.libinput_tablet_tool_config_eraser_button_get_mode;
    pub const libinput_tablet_tool_config_eraser_button_get_default_mode = __root.libinput_tablet_tool_config_eraser_button_get_default_mode;
    pub const libinput_tablet_tool_config_eraser_button_set_button = __root.libinput_tablet_tool_config_eraser_button_set_button;
    pub const libinput_tablet_tool_config_eraser_button_get_button = __root.libinput_tablet_tool_config_eraser_button_get_button;
    pub const libinput_tablet_tool_config_eraser_button_get_default_button = __root.libinput_tablet_tool_config_eraser_button_get_default_button;
    pub const get_type = __root.libinput_tablet_tool_get_type;
    pub const get_tool_id = __root.libinput_tablet_tool_get_tool_id;
    pub const get_name = __root.libinput_tablet_tool_get_name;
    pub const ref = __root.libinput_tablet_tool_ref;
    pub const unref = __root.libinput_tablet_tool_unref;
    pub const has_pressure = __root.libinput_tablet_tool_has_pressure;
    pub const has_distance = __root.libinput_tablet_tool_has_distance;
    pub const has_tilt = __root.libinput_tablet_tool_has_tilt;
    pub const has_rotation = __root.libinput_tablet_tool_has_rotation;
    pub const has_slider = __root.libinput_tablet_tool_has_slider;
    pub const has_size = __root.libinput_tablet_tool_has_size;
    pub const has_wheel = __root.libinput_tablet_tool_has_wheel;
    pub const has_button = __root.libinput_tablet_tool_has_button;
    pub const is_unique = __root.libinput_tablet_tool_is_unique;
    pub const get_serial = __root.libinput_tablet_tool_get_serial;
    pub const get_user_data = __root.libinput_tablet_tool_get_user_data;
    pub const set_user_data = __root.libinput_tablet_tool_set_user_data;
    pub const config_pressure_range_is_available = __root.libinput_tablet_tool_config_pressure_range_is_available;
    pub const config_pressure_range_set = __root.libinput_tablet_tool_config_pressure_range_set;
    pub const config_pressure_range_get_minimum = __root.libinput_tablet_tool_config_pressure_range_get_minimum;
    pub const config_pressure_range_get_maximum = __root.libinput_tablet_tool_config_pressure_range_get_maximum;
    pub const config_pressure_range_get_default_minimum = __root.libinput_tablet_tool_config_pressure_range_get_default_minimum;
    pub const config_pressure_range_get_default_maximum = __root.libinput_tablet_tool_config_pressure_range_get_default_maximum;
    pub const config_eraser_button_get_modes = __root.libinput_tablet_tool_config_eraser_button_get_modes;
    pub const config_eraser_button_set_mode = __root.libinput_tablet_tool_config_eraser_button_set_mode;
    pub const config_eraser_button_get_mode = __root.libinput_tablet_tool_config_eraser_button_get_mode;
    pub const config_eraser_button_get_default_mode = __root.libinput_tablet_tool_config_eraser_button_get_default_mode;
    pub const config_eraser_button_set_button = __root.libinput_tablet_tool_config_eraser_button_set_button;
    pub const config_eraser_button_get_button = __root.libinput_tablet_tool_config_eraser_button_get_button;
    pub const config_eraser_button_get_default_button = __root.libinput_tablet_tool_config_eraser_button_get_default_button;
};
pub const struct_libinput_event = opaque {
    pub const libinput_event_destroy = __root.libinput_event_destroy;
    pub const libinput_event_get_type = __root.libinput_event_get_type;
    pub const libinput_event_get_context = __root.libinput_event_get_context;
    pub const libinput_event_get_device = __root.libinput_event_get_device;
    pub const libinput_event_get_pointer_event = __root.libinput_event_get_pointer_event;
    pub const libinput_event_get_keyboard_event = __root.libinput_event_get_keyboard_event;
    pub const libinput_event_get_touch_event = __root.libinput_event_get_touch_event;
    pub const libinput_event_get_gesture_event = __root.libinput_event_get_gesture_event;
    pub const libinput_event_get_tablet_tool_event = __root.libinput_event_get_tablet_tool_event;
    pub const libinput_event_get_tablet_pad_event = __root.libinput_event_get_tablet_pad_event;
    pub const libinput_event_get_switch_event = __root.libinput_event_get_switch_event;
    pub const libinput_event_get_device_notify_event = __root.libinput_event_get_device_notify_event;
    pub const destroy = __root.libinput_event_destroy;
    pub const get_type = __root.libinput_event_get_type;
    pub const get_context = __root.libinput_event_get_context;
    pub const get_device = __root.libinput_event_get_device;
    pub const get_pointer_event = __root.libinput_event_get_pointer_event;
    pub const get_keyboard_event = __root.libinput_event_get_keyboard_event;
    pub const get_touch_event = __root.libinput_event_get_touch_event;
    pub const get_gesture_event = __root.libinput_event_get_gesture_event;
    pub const get_tablet_tool_event = __root.libinput_event_get_tablet_tool_event;
    pub const get_tablet_pad_event = __root.libinput_event_get_tablet_pad_event;
    pub const get_switch_event = __root.libinput_event_get_switch_event;
    pub const get_device_notify_event = __root.libinput_event_get_device_notify_event;
};
pub const struct_libinput_event_device_notify = opaque {
    pub const libinput_event_device_notify_get_base_event = __root.libinput_event_device_notify_get_base_event;
    pub const get_base_event = __root.libinput_event_device_notify_get_base_event;
};
pub const struct_libinput_event_keyboard = opaque {
    pub const libinput_event_keyboard_get_time = __root.libinput_event_keyboard_get_time;
    pub const libinput_event_keyboard_get_time_usec = __root.libinput_event_keyboard_get_time_usec;
    pub const libinput_event_keyboard_get_key = __root.libinput_event_keyboard_get_key;
    pub const libinput_event_keyboard_get_key_state = __root.libinput_event_keyboard_get_key_state;
    pub const libinput_event_keyboard_get_base_event = __root.libinput_event_keyboard_get_base_event;
    pub const libinput_event_keyboard_get_seat_key_count = __root.libinput_event_keyboard_get_seat_key_count;
    pub const get_time = __root.libinput_event_keyboard_get_time;
    pub const get_time_usec = __root.libinput_event_keyboard_get_time_usec;
    pub const get_key = __root.libinput_event_keyboard_get_key;
    pub const get_key_state = __root.libinput_event_keyboard_get_key_state;
    pub const get_base_event = __root.libinput_event_keyboard_get_base_event;
    pub const get_seat_key_count = __root.libinput_event_keyboard_get_seat_key_count;
};
pub const struct_libinput_event_pointer = opaque {
    pub const libinput_event_pointer_get_time = __root.libinput_event_pointer_get_time;
    pub const libinput_event_pointer_get_time_usec = __root.libinput_event_pointer_get_time_usec;
    pub const libinput_event_pointer_get_dx = __root.libinput_event_pointer_get_dx;
    pub const libinput_event_pointer_get_dy = __root.libinput_event_pointer_get_dy;
    pub const libinput_event_pointer_get_dx_unaccelerated = __root.libinput_event_pointer_get_dx_unaccelerated;
    pub const libinput_event_pointer_get_dy_unaccelerated = __root.libinput_event_pointer_get_dy_unaccelerated;
    pub const libinput_event_pointer_get_absolute_x = __root.libinput_event_pointer_get_absolute_x;
    pub const libinput_event_pointer_get_absolute_y = __root.libinput_event_pointer_get_absolute_y;
    pub const libinput_event_pointer_get_absolute_x_transformed = __root.libinput_event_pointer_get_absolute_x_transformed;
    pub const libinput_event_pointer_get_absolute_y_transformed = __root.libinput_event_pointer_get_absolute_y_transformed;
    pub const libinput_event_pointer_get_button = __root.libinput_event_pointer_get_button;
    pub const libinput_event_pointer_get_button_state = __root.libinput_event_pointer_get_button_state;
    pub const libinput_event_pointer_get_seat_button_count = __root.libinput_event_pointer_get_seat_button_count;
    pub const libinput_event_pointer_has_axis = __root.libinput_event_pointer_has_axis;
    pub const libinput_event_pointer_get_axis_value = __root.libinput_event_pointer_get_axis_value;
    pub const libinput_event_pointer_get_axis_source = __root.libinput_event_pointer_get_axis_source;
    pub const libinput_event_pointer_get_axis_value_discrete = __root.libinput_event_pointer_get_axis_value_discrete;
    pub const libinput_event_pointer_get_scroll_value = __root.libinput_event_pointer_get_scroll_value;
    pub const libinput_event_pointer_get_scroll_value_v120 = __root.libinput_event_pointer_get_scroll_value_v120;
    pub const libinput_event_pointer_get_base_event = __root.libinput_event_pointer_get_base_event;
    pub const get_time = __root.libinput_event_pointer_get_time;
    pub const get_time_usec = __root.libinput_event_pointer_get_time_usec;
    pub const get_dx = __root.libinput_event_pointer_get_dx;
    pub const get_dy = __root.libinput_event_pointer_get_dy;
    pub const get_dx_unaccelerated = __root.libinput_event_pointer_get_dx_unaccelerated;
    pub const get_dy_unaccelerated = __root.libinput_event_pointer_get_dy_unaccelerated;
    pub const get_absolute_x = __root.libinput_event_pointer_get_absolute_x;
    pub const get_absolute_y = __root.libinput_event_pointer_get_absolute_y;
    pub const get_absolute_x_transformed = __root.libinput_event_pointer_get_absolute_x_transformed;
    pub const get_absolute_y_transformed = __root.libinput_event_pointer_get_absolute_y_transformed;
    pub const get_button = __root.libinput_event_pointer_get_button;
    pub const get_button_state = __root.libinput_event_pointer_get_button_state;
    pub const get_seat_button_count = __root.libinput_event_pointer_get_seat_button_count;
    pub const has_axis = __root.libinput_event_pointer_has_axis;
    pub const get_axis_value = __root.libinput_event_pointer_get_axis_value;
    pub const get_axis_source = __root.libinput_event_pointer_get_axis_source;
    pub const get_axis_value_discrete = __root.libinput_event_pointer_get_axis_value_discrete;
    pub const get_scroll_value = __root.libinput_event_pointer_get_scroll_value;
    pub const get_scroll_value_v120 = __root.libinput_event_pointer_get_scroll_value_v120;
    pub const get_base_event = __root.libinput_event_pointer_get_base_event;
};
pub const struct_libinput_event_touch = opaque {
    pub const libinput_event_touch_get_time = __root.libinput_event_touch_get_time;
    pub const libinput_event_touch_get_time_usec = __root.libinput_event_touch_get_time_usec;
    pub const libinput_event_touch_get_slot = __root.libinput_event_touch_get_slot;
    pub const libinput_event_touch_get_seat_slot = __root.libinput_event_touch_get_seat_slot;
    pub const libinput_event_touch_get_x = __root.libinput_event_touch_get_x;
    pub const libinput_event_touch_get_y = __root.libinput_event_touch_get_y;
    pub const libinput_event_touch_get_x_transformed = __root.libinput_event_touch_get_x_transformed;
    pub const libinput_event_touch_get_y_transformed = __root.libinput_event_touch_get_y_transformed;
    pub const libinput_event_touch_get_base_event = __root.libinput_event_touch_get_base_event;
    pub const get_time = __root.libinput_event_touch_get_time;
    pub const get_time_usec = __root.libinput_event_touch_get_time_usec;
    pub const get_slot = __root.libinput_event_touch_get_slot;
    pub const get_seat_slot = __root.libinput_event_touch_get_seat_slot;
    pub const get_x = __root.libinput_event_touch_get_x;
    pub const get_y = __root.libinput_event_touch_get_y;
    pub const get_x_transformed = __root.libinput_event_touch_get_x_transformed;
    pub const get_y_transformed = __root.libinput_event_touch_get_y_transformed;
    pub const get_base_event = __root.libinput_event_touch_get_base_event;
};
pub const struct_libinput_event_gesture = opaque {
    pub const libinput_event_gesture_get_time = __root.libinput_event_gesture_get_time;
    pub const libinput_event_gesture_get_time_usec = __root.libinput_event_gesture_get_time_usec;
    pub const libinput_event_gesture_get_base_event = __root.libinput_event_gesture_get_base_event;
    pub const libinput_event_gesture_get_finger_count = __root.libinput_event_gesture_get_finger_count;
    pub const libinput_event_gesture_get_cancelled = __root.libinput_event_gesture_get_cancelled;
    pub const libinput_event_gesture_get_dx = __root.libinput_event_gesture_get_dx;
    pub const libinput_event_gesture_get_dy = __root.libinput_event_gesture_get_dy;
    pub const libinput_event_gesture_get_dx_unaccelerated = __root.libinput_event_gesture_get_dx_unaccelerated;
    pub const libinput_event_gesture_get_dy_unaccelerated = __root.libinput_event_gesture_get_dy_unaccelerated;
    pub const libinput_event_gesture_get_scale = __root.libinput_event_gesture_get_scale;
    pub const libinput_event_gesture_get_angle_delta = __root.libinput_event_gesture_get_angle_delta;
    pub const get_time = __root.libinput_event_gesture_get_time;
    pub const get_time_usec = __root.libinput_event_gesture_get_time_usec;
    pub const get_base_event = __root.libinput_event_gesture_get_base_event;
    pub const get_finger_count = __root.libinput_event_gesture_get_finger_count;
    pub const get_cancelled = __root.libinput_event_gesture_get_cancelled;
    pub const get_dx = __root.libinput_event_gesture_get_dx;
    pub const get_dy = __root.libinput_event_gesture_get_dy;
    pub const get_dx_unaccelerated = __root.libinput_event_gesture_get_dx_unaccelerated;
    pub const get_dy_unaccelerated = __root.libinput_event_gesture_get_dy_unaccelerated;
    pub const get_scale = __root.libinput_event_gesture_get_scale;
    pub const get_angle_delta = __root.libinput_event_gesture_get_angle_delta;
};
pub const struct_libinput_event_tablet_tool = opaque {
    pub const libinput_event_tablet_tool_get_base_event = __root.libinput_event_tablet_tool_get_base_event;
    pub const libinput_event_tablet_tool_x_has_changed = __root.libinput_event_tablet_tool_x_has_changed;
    pub const libinput_event_tablet_tool_y_has_changed = __root.libinput_event_tablet_tool_y_has_changed;
    pub const libinput_event_tablet_tool_pressure_has_changed = __root.libinput_event_tablet_tool_pressure_has_changed;
    pub const libinput_event_tablet_tool_distance_has_changed = __root.libinput_event_tablet_tool_distance_has_changed;
    pub const libinput_event_tablet_tool_tilt_x_has_changed = __root.libinput_event_tablet_tool_tilt_x_has_changed;
    pub const libinput_event_tablet_tool_tilt_y_has_changed = __root.libinput_event_tablet_tool_tilt_y_has_changed;
    pub const libinput_event_tablet_tool_rotation_has_changed = __root.libinput_event_tablet_tool_rotation_has_changed;
    pub const libinput_event_tablet_tool_slider_has_changed = __root.libinput_event_tablet_tool_slider_has_changed;
    pub const libinput_event_tablet_tool_size_major_has_changed = __root.libinput_event_tablet_tool_size_major_has_changed;
    pub const libinput_event_tablet_tool_size_minor_has_changed = __root.libinput_event_tablet_tool_size_minor_has_changed;
    pub const libinput_event_tablet_tool_wheel_has_changed = __root.libinput_event_tablet_tool_wheel_has_changed;
    pub const libinput_event_tablet_tool_get_x = __root.libinput_event_tablet_tool_get_x;
    pub const libinput_event_tablet_tool_get_y = __root.libinput_event_tablet_tool_get_y;
    pub const libinput_event_tablet_tool_get_dx = __root.libinput_event_tablet_tool_get_dx;
    pub const libinput_event_tablet_tool_get_dy = __root.libinput_event_tablet_tool_get_dy;
    pub const libinput_event_tablet_tool_get_pressure = __root.libinput_event_tablet_tool_get_pressure;
    pub const libinput_event_tablet_tool_get_distance = __root.libinput_event_tablet_tool_get_distance;
    pub const libinput_event_tablet_tool_get_tilt_x = __root.libinput_event_tablet_tool_get_tilt_x;
    pub const libinput_event_tablet_tool_get_tilt_y = __root.libinput_event_tablet_tool_get_tilt_y;
    pub const libinput_event_tablet_tool_get_rotation = __root.libinput_event_tablet_tool_get_rotation;
    pub const libinput_event_tablet_tool_get_slider_position = __root.libinput_event_tablet_tool_get_slider_position;
    pub const libinput_event_tablet_tool_get_size_major = __root.libinput_event_tablet_tool_get_size_major;
    pub const libinput_event_tablet_tool_get_size_minor = __root.libinput_event_tablet_tool_get_size_minor;
    pub const libinput_event_tablet_tool_get_wheel_delta = __root.libinput_event_tablet_tool_get_wheel_delta;
    pub const libinput_event_tablet_tool_get_wheel_delta_discrete = __root.libinput_event_tablet_tool_get_wheel_delta_discrete;
    pub const libinput_event_tablet_tool_get_x_transformed = __root.libinput_event_tablet_tool_get_x_transformed;
    pub const libinput_event_tablet_tool_get_y_transformed = __root.libinput_event_tablet_tool_get_y_transformed;
    pub const libinput_event_tablet_tool_get_tool = __root.libinput_event_tablet_tool_get_tool;
    pub const libinput_event_tablet_tool_get_proximity_state = __root.libinput_event_tablet_tool_get_proximity_state;
    pub const libinput_event_tablet_tool_get_tip_state = __root.libinput_event_tablet_tool_get_tip_state;
    pub const libinput_event_tablet_tool_get_button = __root.libinput_event_tablet_tool_get_button;
    pub const libinput_event_tablet_tool_get_button_state = __root.libinput_event_tablet_tool_get_button_state;
    pub const libinput_event_tablet_tool_get_seat_button_count = __root.libinput_event_tablet_tool_get_seat_button_count;
    pub const libinput_event_tablet_tool_get_time = __root.libinput_event_tablet_tool_get_time;
    pub const libinput_event_tablet_tool_get_time_usec = __root.libinput_event_tablet_tool_get_time_usec;
    pub const get_base_event = __root.libinput_event_tablet_tool_get_base_event;
    pub const x_has_changed = __root.libinput_event_tablet_tool_x_has_changed;
    pub const y_has_changed = __root.libinput_event_tablet_tool_y_has_changed;
    pub const pressure_has_changed = __root.libinput_event_tablet_tool_pressure_has_changed;
    pub const distance_has_changed = __root.libinput_event_tablet_tool_distance_has_changed;
    pub const tilt_x_has_changed = __root.libinput_event_tablet_tool_tilt_x_has_changed;
    pub const tilt_y_has_changed = __root.libinput_event_tablet_tool_tilt_y_has_changed;
    pub const rotation_has_changed = __root.libinput_event_tablet_tool_rotation_has_changed;
    pub const slider_has_changed = __root.libinput_event_tablet_tool_slider_has_changed;
    pub const size_major_has_changed = __root.libinput_event_tablet_tool_size_major_has_changed;
    pub const size_minor_has_changed = __root.libinput_event_tablet_tool_size_minor_has_changed;
    pub const wheel_has_changed = __root.libinput_event_tablet_tool_wheel_has_changed;
    pub const get_x = __root.libinput_event_tablet_tool_get_x;
    pub const get_y = __root.libinput_event_tablet_tool_get_y;
    pub const get_dx = __root.libinput_event_tablet_tool_get_dx;
    pub const get_dy = __root.libinput_event_tablet_tool_get_dy;
    pub const get_pressure = __root.libinput_event_tablet_tool_get_pressure;
    pub const get_distance = __root.libinput_event_tablet_tool_get_distance;
    pub const get_tilt_x = __root.libinput_event_tablet_tool_get_tilt_x;
    pub const get_tilt_y = __root.libinput_event_tablet_tool_get_tilt_y;
    pub const get_rotation = __root.libinput_event_tablet_tool_get_rotation;
    pub const get_slider_position = __root.libinput_event_tablet_tool_get_slider_position;
    pub const get_size_major = __root.libinput_event_tablet_tool_get_size_major;
    pub const get_size_minor = __root.libinput_event_tablet_tool_get_size_minor;
    pub const get_wheel_delta = __root.libinput_event_tablet_tool_get_wheel_delta;
    pub const get_wheel_delta_discrete = __root.libinput_event_tablet_tool_get_wheel_delta_discrete;
    pub const get_x_transformed = __root.libinput_event_tablet_tool_get_x_transformed;
    pub const get_y_transformed = __root.libinput_event_tablet_tool_get_y_transformed;
    pub const get_tool = __root.libinput_event_tablet_tool_get_tool;
    pub const get_proximity_state = __root.libinput_event_tablet_tool_get_proximity_state;
    pub const get_tip_state = __root.libinput_event_tablet_tool_get_tip_state;
    pub const get_button = __root.libinput_event_tablet_tool_get_button;
    pub const get_button_state = __root.libinput_event_tablet_tool_get_button_state;
    pub const get_seat_button_count = __root.libinput_event_tablet_tool_get_seat_button_count;
    pub const get_time = __root.libinput_event_tablet_tool_get_time;
    pub const get_time_usec = __root.libinput_event_tablet_tool_get_time_usec;
};
pub const struct_libinput_event_tablet_pad = opaque {
    pub const libinput_event_tablet_pad_get_base_event = __root.libinput_event_tablet_pad_get_base_event;
    pub const libinput_event_tablet_pad_get_ring_position = __root.libinput_event_tablet_pad_get_ring_position;
    pub const libinput_event_tablet_pad_get_ring_number = __root.libinput_event_tablet_pad_get_ring_number;
    pub const libinput_event_tablet_pad_get_ring_source = __root.libinput_event_tablet_pad_get_ring_source;
    pub const libinput_event_tablet_pad_get_strip_position = __root.libinput_event_tablet_pad_get_strip_position;
    pub const libinput_event_tablet_pad_get_strip_number = __root.libinput_event_tablet_pad_get_strip_number;
    pub const libinput_event_tablet_pad_get_strip_source = __root.libinput_event_tablet_pad_get_strip_source;
    pub const libinput_event_tablet_pad_get_button_number = __root.libinput_event_tablet_pad_get_button_number;
    pub const libinput_event_tablet_pad_get_button_state = __root.libinput_event_tablet_pad_get_button_state;
    pub const libinput_event_tablet_pad_get_key = __root.libinput_event_tablet_pad_get_key;
    pub const libinput_event_tablet_pad_get_key_state = __root.libinput_event_tablet_pad_get_key_state;
    pub const libinput_event_tablet_pad_get_dial_delta_v120 = __root.libinput_event_tablet_pad_get_dial_delta_v120;
    pub const libinput_event_tablet_pad_get_dial_number = __root.libinput_event_tablet_pad_get_dial_number;
    pub const libinput_event_tablet_pad_get_mode = __root.libinput_event_tablet_pad_get_mode;
    pub const libinput_event_tablet_pad_get_mode_group = __root.libinput_event_tablet_pad_get_mode_group;
    pub const libinput_event_tablet_pad_get_time = __root.libinput_event_tablet_pad_get_time;
    pub const libinput_event_tablet_pad_get_time_usec = __root.libinput_event_tablet_pad_get_time_usec;
    pub const get_base_event = __root.libinput_event_tablet_pad_get_base_event;
    pub const get_ring_position = __root.libinput_event_tablet_pad_get_ring_position;
    pub const get_ring_number = __root.libinput_event_tablet_pad_get_ring_number;
    pub const get_ring_source = __root.libinput_event_tablet_pad_get_ring_source;
    pub const get_strip_position = __root.libinput_event_tablet_pad_get_strip_position;
    pub const get_strip_number = __root.libinput_event_tablet_pad_get_strip_number;
    pub const get_strip_source = __root.libinput_event_tablet_pad_get_strip_source;
    pub const get_button_number = __root.libinput_event_tablet_pad_get_button_number;
    pub const get_button_state = __root.libinput_event_tablet_pad_get_button_state;
    pub const get_key = __root.libinput_event_tablet_pad_get_key;
    pub const get_key_state = __root.libinput_event_tablet_pad_get_key_state;
    pub const get_dial_delta_v120 = __root.libinput_event_tablet_pad_get_dial_delta_v120;
    pub const get_dial_number = __root.libinput_event_tablet_pad_get_dial_number;
    pub const get_mode = __root.libinput_event_tablet_pad_get_mode;
    pub const get_mode_group = __root.libinput_event_tablet_pad_get_mode_group;
    pub const get_time = __root.libinput_event_tablet_pad_get_time;
    pub const get_time_usec = __root.libinput_event_tablet_pad_get_time_usec;
};
pub const LIBINPUT_LOG_PRIORITY_DEBUG: c_int = 10;
pub const LIBINPUT_LOG_PRIORITY_INFO: c_int = 20;
pub const LIBINPUT_LOG_PRIORITY_ERROR: c_int = 30;
pub const enum_libinput_log_priority = c_uint;
pub const LIBINPUT_DEVICE_CAP_KEYBOARD: c_int = 0;
pub const LIBINPUT_DEVICE_CAP_POINTER: c_int = 1;
pub const LIBINPUT_DEVICE_CAP_TOUCH: c_int = 2;
pub const LIBINPUT_DEVICE_CAP_TABLET_TOOL: c_int = 3;
pub const LIBINPUT_DEVICE_CAP_TABLET_PAD: c_int = 4;
pub const LIBINPUT_DEVICE_CAP_GESTURE: c_int = 5;
pub const LIBINPUT_DEVICE_CAP_SWITCH: c_int = 6;
pub const enum_libinput_device_capability = c_uint;
pub const LIBINPUT_KEY_STATE_RELEASED: c_int = 0;
pub const LIBINPUT_KEY_STATE_PRESSED: c_int = 1;
pub const enum_libinput_key_state = c_uint;
pub const LIBINPUT_LED_NUM_LOCK: c_int = 1;
pub const LIBINPUT_LED_CAPS_LOCK: c_int = 2;
pub const LIBINPUT_LED_SCROLL_LOCK: c_int = 4;
pub const LIBINPUT_LED_COMPOSE: c_int = 8;
pub const LIBINPUT_LED_KANA: c_int = 16;
pub const enum_libinput_led = c_uint;
pub const LIBINPUT_BUTTON_STATE_RELEASED: c_int = 0;
pub const LIBINPUT_BUTTON_STATE_PRESSED: c_int = 1;
pub const enum_libinput_button_state = c_uint;
pub const LIBINPUT_POINTER_AXIS_SCROLL_VERTICAL: c_int = 0;
pub const LIBINPUT_POINTER_AXIS_SCROLL_HORIZONTAL: c_int = 1;
pub const enum_libinput_pointer_axis = c_uint;
pub const LIBINPUT_POINTER_AXIS_SOURCE_WHEEL: c_int = 1;
pub const LIBINPUT_POINTER_AXIS_SOURCE_FINGER: c_int = 2;
pub const LIBINPUT_POINTER_AXIS_SOURCE_CONTINUOUS: c_int = 3;
pub const LIBINPUT_POINTER_AXIS_SOURCE_WHEEL_TILT: c_int = 4;
pub const enum_libinput_pointer_axis_source = c_uint;
pub const LIBINPUT_TABLET_PAD_RING_SOURCE_UNKNOWN: c_int = 1;
pub const LIBINPUT_TABLET_PAD_RING_SOURCE_FINGER: c_int = 2;
pub const enum_libinput_tablet_pad_ring_axis_source = c_uint;
pub const LIBINPUT_TABLET_PAD_STRIP_SOURCE_UNKNOWN: c_int = 1;
pub const LIBINPUT_TABLET_PAD_STRIP_SOURCE_FINGER: c_int = 2;
pub const enum_libinput_tablet_pad_strip_axis_source = c_uint;
pub const LIBINPUT_TABLET_TOOL_TYPE_PEN: c_int = 1;
pub const LIBINPUT_TABLET_TOOL_TYPE_ERASER: c_int = 2;
pub const LIBINPUT_TABLET_TOOL_TYPE_BRUSH: c_int = 3;
pub const LIBINPUT_TABLET_TOOL_TYPE_PENCIL: c_int = 4;
pub const LIBINPUT_TABLET_TOOL_TYPE_AIRBRUSH: c_int = 5;
pub const LIBINPUT_TABLET_TOOL_TYPE_MOUSE: c_int = 6;
pub const LIBINPUT_TABLET_TOOL_TYPE_LENS: c_int = 7;
pub const LIBINPUT_TABLET_TOOL_TYPE_TOTEM: c_int = 8;
pub const enum_libinput_tablet_tool_type = c_uint;
pub const LIBINPUT_TABLET_TOOL_PROXIMITY_STATE_OUT: c_int = 0;
pub const LIBINPUT_TABLET_TOOL_PROXIMITY_STATE_IN: c_int = 1;
pub const enum_libinput_tablet_tool_proximity_state = c_uint;
pub const LIBINPUT_TABLET_TOOL_TIP_UP: c_int = 0;
pub const LIBINPUT_TABLET_TOOL_TIP_DOWN: c_int = 1;
pub const enum_libinput_tablet_tool_tip_state = c_uint;
pub const struct_libinput_tablet_pad_mode_group = opaque {
    pub const libinput_tablet_pad_mode_group_get_index = __root.libinput_tablet_pad_mode_group_get_index;
    pub const libinput_tablet_pad_mode_group_get_num_modes = __root.libinput_tablet_pad_mode_group_get_num_modes;
    pub const libinput_tablet_pad_mode_group_get_mode = __root.libinput_tablet_pad_mode_group_get_mode;
    pub const libinput_tablet_pad_mode_group_has_button = __root.libinput_tablet_pad_mode_group_has_button;
    pub const libinput_tablet_pad_mode_group_has_dial = __root.libinput_tablet_pad_mode_group_has_dial;
    pub const libinput_tablet_pad_mode_group_has_ring = __root.libinput_tablet_pad_mode_group_has_ring;
    pub const libinput_tablet_pad_mode_group_has_strip = __root.libinput_tablet_pad_mode_group_has_strip;
    pub const libinput_tablet_pad_mode_group_button_is_toggle = __root.libinput_tablet_pad_mode_group_button_is_toggle;
    pub const libinput_tablet_pad_mode_group_ref = __root.libinput_tablet_pad_mode_group_ref;
    pub const libinput_tablet_pad_mode_group_unref = __root.libinput_tablet_pad_mode_group_unref;
    pub const libinput_tablet_pad_mode_group_set_user_data = __root.libinput_tablet_pad_mode_group_set_user_data;
    pub const libinput_tablet_pad_mode_group_get_user_data = __root.libinput_tablet_pad_mode_group_get_user_data;
    pub const get_index = __root.libinput_tablet_pad_mode_group_get_index;
    pub const get_num_modes = __root.libinput_tablet_pad_mode_group_get_num_modes;
    pub const get_mode = __root.libinput_tablet_pad_mode_group_get_mode;
    pub const has_button = __root.libinput_tablet_pad_mode_group_has_button;
    pub const has_dial = __root.libinput_tablet_pad_mode_group_has_dial;
    pub const has_ring = __root.libinput_tablet_pad_mode_group_has_ring;
    pub const has_strip = __root.libinput_tablet_pad_mode_group_has_strip;
    pub const button_is_toggle = __root.libinput_tablet_pad_mode_group_button_is_toggle;
    pub const ref = __root.libinput_tablet_pad_mode_group_ref;
    pub const unref = __root.libinput_tablet_pad_mode_group_unref;
    pub const set_user_data = __root.libinput_tablet_pad_mode_group_set_user_data;
    pub const get_user_data = __root.libinput_tablet_pad_mode_group_get_user_data;
};
pub extern fn libinput_device_tablet_pad_get_num_mode_groups(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_tablet_pad_get_mode_group(device: ?*struct_libinput_device, index: c_uint) ?*struct_libinput_tablet_pad_mode_group;
pub extern fn libinput_tablet_pad_mode_group_get_index(group: ?*struct_libinput_tablet_pad_mode_group) c_uint;
pub extern fn libinput_tablet_pad_mode_group_get_num_modes(group: ?*struct_libinput_tablet_pad_mode_group) c_uint;
pub extern fn libinput_tablet_pad_mode_group_get_mode(group: ?*struct_libinput_tablet_pad_mode_group) c_uint;
pub extern fn libinput_tablet_pad_mode_group_has_button(group: ?*struct_libinput_tablet_pad_mode_group, button: c_uint) c_int;
pub extern fn libinput_tablet_pad_mode_group_has_dial(group: ?*struct_libinput_tablet_pad_mode_group, dial: c_uint) c_int;
pub extern fn libinput_tablet_pad_mode_group_has_ring(group: ?*struct_libinput_tablet_pad_mode_group, ring: c_uint) c_int;
pub extern fn libinput_tablet_pad_mode_group_has_strip(group: ?*struct_libinput_tablet_pad_mode_group, strip: c_uint) c_int;
pub extern fn libinput_tablet_pad_mode_group_button_is_toggle(group: ?*struct_libinput_tablet_pad_mode_group, button: c_uint) c_int;
pub extern fn libinput_tablet_pad_mode_group_ref(group: ?*struct_libinput_tablet_pad_mode_group) ?*struct_libinput_tablet_pad_mode_group;
pub extern fn libinput_tablet_pad_mode_group_unref(group: ?*struct_libinput_tablet_pad_mode_group) ?*struct_libinput_tablet_pad_mode_group;
pub extern fn libinput_tablet_pad_mode_group_set_user_data(group: ?*struct_libinput_tablet_pad_mode_group, user_data: ?*anyopaque) void;
pub extern fn libinput_tablet_pad_mode_group_get_user_data(group: ?*struct_libinput_tablet_pad_mode_group) ?*anyopaque;
pub const LIBINPUT_SWITCH_STATE_OFF: c_int = 0;
pub const LIBINPUT_SWITCH_STATE_ON: c_int = 1;
pub const enum_libinput_switch_state = c_uint;
pub const LIBINPUT_SWITCH_LID: c_int = 1;
pub const LIBINPUT_SWITCH_TABLET_MODE: c_int = 2;
pub const LIBINPUT_SWITCH_KEYPAD_SLIDE: c_int = 3;
pub const enum_libinput_switch = c_uint;
pub const struct_libinput_event_switch = opaque {
    pub const libinput_event_switch_get_switch = __root.libinput_event_switch_get_switch;
    pub const libinput_event_switch_get_switch_state = __root.libinput_event_switch_get_switch_state;
    pub const libinput_event_switch_get_base_event = __root.libinput_event_switch_get_base_event;
    pub const libinput_event_switch_get_time = __root.libinput_event_switch_get_time;
    pub const libinput_event_switch_get_time_usec = __root.libinput_event_switch_get_time_usec;
    pub const get_switch = __root.libinput_event_switch_get_switch;
    pub const get_switch_state = __root.libinput_event_switch_get_switch_state;
    pub const get_base_event = __root.libinput_event_switch_get_base_event;
    pub const get_time = __root.libinput_event_switch_get_time;
    pub const get_time_usec = __root.libinput_event_switch_get_time_usec;
};

pub const LIBINPUT_EVENT_NONE: c_int = 0;
pub const LIBINPUT_EVENT_DEVICE_ADDED: c_int = 1;
pub const LIBINPUT_EVENT_DEVICE_REMOVED: c_int = 2;
pub const LIBINPUT_EVENT_KEYBOARD_KEY: c_int = 300;
pub const LIBINPUT_EVENT_POINTER_MOTION: c_int = 400;
pub const LIBINPUT_EVENT_POINTER_MOTION_ABSOLUTE: c_int = 401;
pub const LIBINPUT_EVENT_POINTER_BUTTON: c_int = 402;
pub const LIBINPUT_EVENT_POINTER_AXIS: c_int = 403;
pub const LIBINPUT_EVENT_POINTER_SCROLL_WHEEL: c_int = 404;
pub const LIBINPUT_EVENT_POINTER_SCROLL_FINGER: c_int = 405;
pub const LIBINPUT_EVENT_POINTER_SCROLL_CONTINUOUS: c_int = 406;
pub const LIBINPUT_EVENT_TOUCH_DOWN: c_int = 500;
pub const LIBINPUT_EVENT_TOUCH_UP: c_int = 501;
pub const LIBINPUT_EVENT_TOUCH_MOTION: c_int = 502;
pub const LIBINPUT_EVENT_TOUCH_CANCEL: c_int = 503;
pub const LIBINPUT_EVENT_TOUCH_FRAME: c_int = 504;
pub const LIBINPUT_EVENT_TABLET_TOOL_AXIS: c_int = 600;
pub const LIBINPUT_EVENT_TABLET_TOOL_PROXIMITY: c_int = 601;
pub const LIBINPUT_EVENT_TABLET_TOOL_TIP: c_int = 602;
pub const LIBINPUT_EVENT_TABLET_TOOL_BUTTON: c_int = 603;
pub const LIBINPUT_EVENT_TABLET_PAD_BUTTON: c_int = 700;
pub const LIBINPUT_EVENT_TABLET_PAD_RING: c_int = 701;
pub const LIBINPUT_EVENT_TABLET_PAD_STRIP: c_int = 702;
pub const LIBINPUT_EVENT_TABLET_PAD_KEY: c_int = 703;
pub const LIBINPUT_EVENT_TABLET_PAD_DIAL: c_int = 704;
pub const LIBINPUT_EVENT_GESTURE_SWIPE_BEGIN: c_int = 800;
pub const LIBINPUT_EVENT_GESTURE_SWIPE_UPDATE: c_int = 801;
pub const LIBINPUT_EVENT_GESTURE_SWIPE_END: c_int = 802;
pub const LIBINPUT_EVENT_GESTURE_PINCH_BEGIN: c_int = 803;
pub const LIBINPUT_EVENT_GESTURE_PINCH_UPDATE: c_int = 804;
pub const LIBINPUT_EVENT_GESTURE_PINCH_END: c_int = 805;
pub const LIBINPUT_EVENT_GESTURE_HOLD_BEGIN: c_int = 806;
pub const LIBINPUT_EVENT_GESTURE_HOLD_END: c_int = 807;
pub const LIBINPUT_EVENT_SWITCH_TOGGLE: c_int = 900;
pub const enum_libinput_event_type = c_uint;
pub extern fn libinput_event_destroy(event: ?*struct_libinput_event) void;
pub extern fn libinput_event_get_type(event: ?*struct_libinput_event) enum_libinput_event_type;
pub extern fn libinput_event_get_context(event: ?*struct_libinput_event) ?*struct_libinput;
pub extern fn libinput_event_get_device(event: ?*struct_libinput_event) ?*struct_libinput_device;
pub extern fn libinput_event_get_pointer_event(event: ?*struct_libinput_event) ?*struct_libinput_event_pointer;
pub extern fn libinput_event_get_keyboard_event(event: ?*struct_libinput_event) ?*struct_libinput_event_keyboard;
pub extern fn libinput_event_get_touch_event(event: ?*struct_libinput_event) ?*struct_libinput_event_touch;
pub extern fn libinput_event_get_gesture_event(event: ?*struct_libinput_event) ?*struct_libinput_event_gesture;
pub extern fn libinput_event_get_tablet_tool_event(event: ?*struct_libinput_event) ?*struct_libinput_event_tablet_tool;
pub extern fn libinput_event_get_tablet_pad_event(event: ?*struct_libinput_event) ?*struct_libinput_event_tablet_pad;
pub extern fn libinput_event_get_switch_event(event: ?*struct_libinput_event) ?*struct_libinput_event_switch;
pub extern fn libinput_event_get_device_notify_event(event: ?*struct_libinput_event) ?*struct_libinput_event_device_notify;
pub extern fn libinput_event_device_notify_get_base_event(event: ?*struct_libinput_event_device_notify) ?*struct_libinput_event;
pub extern fn libinput_event_keyboard_get_time(event: ?*struct_libinput_event_keyboard) u32;
pub extern fn libinput_event_keyboard_get_time_usec(event: ?*struct_libinput_event_keyboard) u64;
pub extern fn libinput_event_keyboard_get_key(event: ?*struct_libinput_event_keyboard) u32;
pub extern fn libinput_event_keyboard_get_key_state(event: ?*struct_libinput_event_keyboard) enum_libinput_key_state;
pub extern fn libinput_event_keyboard_get_base_event(event: ?*struct_libinput_event_keyboard) ?*struct_libinput_event;
pub extern fn libinput_event_keyboard_get_seat_key_count(event: ?*struct_libinput_event_keyboard) u32;
pub extern fn libinput_event_pointer_get_time(event: ?*struct_libinput_event_pointer) u32;
pub extern fn libinput_event_pointer_get_time_usec(event: ?*struct_libinput_event_pointer) u64;
pub extern fn libinput_event_pointer_get_dx(event: ?*struct_libinput_event_pointer) f64;
pub extern fn libinput_event_pointer_get_dy(event: ?*struct_libinput_event_pointer) f64;
pub extern fn libinput_event_pointer_get_dx_unaccelerated(event: ?*struct_libinput_event_pointer) f64;
pub extern fn libinput_event_pointer_get_dy_unaccelerated(event: ?*struct_libinput_event_pointer) f64;
pub extern fn libinput_event_pointer_get_absolute_x(event: ?*struct_libinput_event_pointer) f64;
pub extern fn libinput_event_pointer_get_absolute_y(event: ?*struct_libinput_event_pointer) f64;
pub extern fn libinput_event_pointer_get_absolute_x_transformed(event: ?*struct_libinput_event_pointer, width: u32) f64;
pub extern fn libinput_event_pointer_get_absolute_y_transformed(event: ?*struct_libinput_event_pointer, height: u32) f64;
pub extern fn libinput_event_pointer_get_button(event: ?*struct_libinput_event_pointer) u32;
pub extern fn libinput_event_pointer_get_button_state(event: ?*struct_libinput_event_pointer) enum_libinput_button_state;
pub extern fn libinput_event_pointer_get_seat_button_count(event: ?*struct_libinput_event_pointer) u32;
pub extern fn libinput_event_pointer_has_axis(event: ?*struct_libinput_event_pointer, axis: enum_libinput_pointer_axis) c_int;
pub extern fn libinput_event_pointer_get_axis_value(event: ?*struct_libinput_event_pointer, axis: enum_libinput_pointer_axis) f64;
pub extern fn libinput_event_pointer_get_axis_source(event: ?*struct_libinput_event_pointer) enum_libinput_pointer_axis_source;
pub extern fn libinput_event_pointer_get_axis_value_discrete(event: ?*struct_libinput_event_pointer, axis: enum_libinput_pointer_axis) f64;
pub extern fn libinput_event_pointer_get_scroll_value(event: ?*struct_libinput_event_pointer, axis: enum_libinput_pointer_axis) f64;
pub extern fn libinput_event_pointer_get_scroll_value_v120(event: ?*struct_libinput_event_pointer, axis: enum_libinput_pointer_axis) f64;
pub extern fn libinput_event_pointer_get_base_event(event: ?*struct_libinput_event_pointer) ?*struct_libinput_event;
pub extern fn libinput_event_touch_get_time(event: ?*struct_libinput_event_touch) u32;
pub extern fn libinput_event_touch_get_time_usec(event: ?*struct_libinput_event_touch) u64;
pub extern fn libinput_event_touch_get_slot(event: ?*struct_libinput_event_touch) i32;
pub extern fn libinput_event_touch_get_seat_slot(event: ?*struct_libinput_event_touch) i32;
pub extern fn libinput_event_touch_get_x(event: ?*struct_libinput_event_touch) f64;
pub extern fn libinput_event_touch_get_y(event: ?*struct_libinput_event_touch) f64;
pub extern fn libinput_event_touch_get_x_transformed(event: ?*struct_libinput_event_touch, width: u32) f64;
pub extern fn libinput_event_touch_get_y_transformed(event: ?*struct_libinput_event_touch, height: u32) f64;
pub extern fn libinput_event_touch_get_base_event(event: ?*struct_libinput_event_touch) ?*struct_libinput_event;
pub extern fn libinput_event_gesture_get_time(event: ?*struct_libinput_event_gesture) u32;
pub extern fn libinput_event_gesture_get_time_usec(event: ?*struct_libinput_event_gesture) u64;
pub extern fn libinput_event_gesture_get_base_event(event: ?*struct_libinput_event_gesture) ?*struct_libinput_event;
pub extern fn libinput_event_gesture_get_finger_count(event: ?*struct_libinput_event_gesture) c_int;
pub extern fn libinput_event_gesture_get_cancelled(event: ?*struct_libinput_event_gesture) c_int;
pub extern fn libinput_event_gesture_get_dx(event: ?*struct_libinput_event_gesture) f64;
pub extern fn libinput_event_gesture_get_dy(event: ?*struct_libinput_event_gesture) f64;
pub extern fn libinput_event_gesture_get_dx_unaccelerated(event: ?*struct_libinput_event_gesture) f64;
pub extern fn libinput_event_gesture_get_dy_unaccelerated(event: ?*struct_libinput_event_gesture) f64;
pub extern fn libinput_event_gesture_get_scale(event: ?*struct_libinput_event_gesture) f64;
pub extern fn libinput_event_gesture_get_angle_delta(event: ?*struct_libinput_event_gesture) f64;
pub extern fn libinput_event_tablet_tool_get_base_event(event: ?*struct_libinput_event_tablet_tool) ?*struct_libinput_event;
pub extern fn libinput_event_tablet_tool_x_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_y_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_pressure_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_distance_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_tilt_x_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_tilt_y_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_rotation_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_slider_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_size_major_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_size_minor_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_wheel_has_changed(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_get_x(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_y(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_dx(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_dy(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_pressure(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_distance(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_tilt_x(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_tilt_y(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_rotation(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_slider_position(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_size_major(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_size_minor(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_wheel_delta(event: ?*struct_libinput_event_tablet_tool) f64;
pub extern fn libinput_event_tablet_tool_get_wheel_delta_discrete(event: ?*struct_libinput_event_tablet_tool) c_int;
pub extern fn libinput_event_tablet_tool_get_x_transformed(event: ?*struct_libinput_event_tablet_tool, width: u32) f64;
pub extern fn libinput_event_tablet_tool_get_y_transformed(event: ?*struct_libinput_event_tablet_tool, height: u32) f64;
pub extern fn libinput_event_tablet_tool_get_tool(event: ?*struct_libinput_event_tablet_tool) ?*struct_libinput_tablet_tool;
pub extern fn libinput_event_tablet_tool_get_proximity_state(event: ?*struct_libinput_event_tablet_tool) enum_libinput_tablet_tool_proximity_state;
pub extern fn libinput_event_tablet_tool_get_tip_state(event: ?*struct_libinput_event_tablet_tool) enum_libinput_tablet_tool_tip_state;
pub extern fn libinput_event_tablet_tool_get_button(event: ?*struct_libinput_event_tablet_tool) u32;
pub extern fn libinput_event_tablet_tool_get_button_state(event: ?*struct_libinput_event_tablet_tool) enum_libinput_button_state;
pub extern fn libinput_event_tablet_tool_get_seat_button_count(event: ?*struct_libinput_event_tablet_tool) u32;
pub extern fn libinput_event_tablet_tool_get_time(event: ?*struct_libinput_event_tablet_tool) u32;
pub extern fn libinput_event_tablet_tool_get_time_usec(event: ?*struct_libinput_event_tablet_tool) u64;
pub extern fn libinput_tablet_tool_get_type(tool: ?*struct_libinput_tablet_tool) enum_libinput_tablet_tool_type;
pub extern fn libinput_tablet_tool_get_tool_id(tool: ?*struct_libinput_tablet_tool) u64;
pub extern fn libinput_tablet_tool_get_name(tool: ?*struct_libinput_tablet_tool) [*c]const u8;
pub extern fn libinput_tablet_tool_ref(tool: ?*struct_libinput_tablet_tool) ?*struct_libinput_tablet_tool;
pub extern fn libinput_tablet_tool_unref(tool: ?*struct_libinput_tablet_tool) ?*struct_libinput_tablet_tool;
pub extern fn libinput_tablet_tool_has_pressure(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_has_distance(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_has_tilt(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_has_rotation(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_has_slider(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_has_size(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_has_wheel(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_has_button(tool: ?*struct_libinput_tablet_tool, code: u32) c_int;
pub extern fn libinput_tablet_tool_is_unique(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_get_serial(tool: ?*struct_libinput_tablet_tool) u64;
pub extern fn libinput_tablet_tool_get_user_data(tool: ?*struct_libinput_tablet_tool) ?*anyopaque;
pub extern fn libinput_tablet_tool_set_user_data(tool: ?*struct_libinput_tablet_tool, user_data: ?*anyopaque) void;
pub extern fn libinput_event_tablet_pad_get_base_event(event: ?*struct_libinput_event_tablet_pad) ?*struct_libinput_event;
pub extern fn libinput_event_tablet_pad_get_ring_position(event: ?*struct_libinput_event_tablet_pad) f64;
pub extern fn libinput_event_tablet_pad_get_ring_number(event: ?*struct_libinput_event_tablet_pad) c_uint;
pub extern fn libinput_event_tablet_pad_get_ring_source(event: ?*struct_libinput_event_tablet_pad) enum_libinput_tablet_pad_ring_axis_source;
pub extern fn libinput_event_tablet_pad_get_strip_position(event: ?*struct_libinput_event_tablet_pad) f64;
pub extern fn libinput_event_tablet_pad_get_strip_number(event: ?*struct_libinput_event_tablet_pad) c_uint;
pub extern fn libinput_event_tablet_pad_get_strip_source(event: ?*struct_libinput_event_tablet_pad) enum_libinput_tablet_pad_strip_axis_source;
pub extern fn libinput_event_tablet_pad_get_button_number(event: ?*struct_libinput_event_tablet_pad) u32;
pub extern fn libinput_event_tablet_pad_get_button_state(event: ?*struct_libinput_event_tablet_pad) enum_libinput_button_state;
pub extern fn libinput_event_tablet_pad_get_key(event: ?*struct_libinput_event_tablet_pad) u32;
pub extern fn libinput_event_tablet_pad_get_key_state(event: ?*struct_libinput_event_tablet_pad) enum_libinput_key_state;
pub extern fn libinput_event_tablet_pad_get_dial_delta_v120(event: ?*struct_libinput_event_tablet_pad) f64;
pub extern fn libinput_event_tablet_pad_get_dial_number(event: ?*struct_libinput_event_tablet_pad) c_uint;
pub extern fn libinput_event_tablet_pad_get_mode(event: ?*struct_libinput_event_tablet_pad) c_uint;
pub extern fn libinput_event_tablet_pad_get_mode_group(event: ?*struct_libinput_event_tablet_pad) ?*struct_libinput_tablet_pad_mode_group;
pub extern fn libinput_event_tablet_pad_get_time(event: ?*struct_libinput_event_tablet_pad) u32;
pub extern fn libinput_event_tablet_pad_get_time_usec(event: ?*struct_libinput_event_tablet_pad) u64;
pub extern fn libinput_event_switch_get_switch(event: ?*struct_libinput_event_switch) enum_libinput_switch;
pub extern fn libinput_event_switch_get_switch_state(event: ?*struct_libinput_event_switch) enum_libinput_switch_state;
pub extern fn libinput_event_switch_get_base_event(event: ?*struct_libinput_event_switch) ?*struct_libinput_event;
pub extern fn libinput_event_switch_get_time(event: ?*struct_libinput_event_switch) u32;
pub extern fn libinput_event_switch_get_time_usec(event: ?*struct_libinput_event_switch) u64;
pub const struct_libinput_interface = extern struct {
    open_restricted: ?*const fn (path: [*c]const u8, flags: c_int, user_data: ?*anyopaque) callconv(.c) c_int = null,
    close_restricted: ?*const fn (fd: c_int, user_data: ?*anyopaque) callconv(.c) void = null,
    pub const libinput_udev_create_context = __root.libinput_udev_create_context;
    pub const libinput_path_create_context = __root.libinput_path_create_context;
    pub const context = __root.libinput_udev_create_context;
};
pub extern fn libinput_udev_create_context(interface: [*c]const struct_libinput_interface, user_data: ?*anyopaque, udev: ?*struct_udev) ?*struct_libinput;
pub extern fn libinput_udev_assign_seat(libinput: ?*struct_libinput, seat_id: [*c]const u8) c_int;
pub extern fn libinput_path_create_context(interface: [*c]const struct_libinput_interface, user_data: ?*anyopaque) ?*struct_libinput;
pub extern fn libinput_path_add_device(libinput: ?*struct_libinput, path: [*c]const u8) ?*struct_libinput_device;
pub extern fn libinput_path_remove_device(device: ?*struct_libinput_device) void;
pub extern fn libinput_plugin_system_append_path(libinput: ?*struct_libinput, path: [*c]const u8) void;
pub extern fn libinput_plugin_system_append_default_paths(libinput: ?*struct_libinput) void;
pub const LIBINPUT_PLUGIN_SYSTEM_FLAG_NONE: c_int = 0;
pub const enum_libinput_plugin_system_flags = c_uint;
pub extern fn libinput_plugin_system_load_plugins(libinput: ?*struct_libinput, flags: enum_libinput_plugin_system_flags) c_int;
pub extern fn libinput_get_fd(libinput: ?*struct_libinput) c_int;
pub extern fn libinput_dispatch(libinput: ?*struct_libinput) c_int;
pub extern fn libinput_get_event(libinput: ?*struct_libinput) ?*struct_libinput_event;
pub extern fn libinput_next_event_type(libinput: ?*struct_libinput) enum_libinput_event_type;
pub extern fn libinput_set_user_data(libinput: ?*struct_libinput, user_data: ?*anyopaque) void;
pub extern fn libinput_get_user_data(libinput: ?*struct_libinput) ?*anyopaque;
pub extern fn libinput_resume(libinput: ?*struct_libinput) c_int;
pub extern fn libinput_suspend(libinput: ?*struct_libinput) void;
pub extern fn libinput_ref(libinput: ?*struct_libinput) ?*struct_libinput;
pub extern fn libinput_unref(libinput: ?*struct_libinput) ?*struct_libinput;
pub extern fn libinput_log_set_priority(libinput: ?*struct_libinput, priority: enum_libinput_log_priority) void;
pub extern fn libinput_log_get_priority(libinput: ?*const struct_libinput) enum_libinput_log_priority;
pub const libinput_log_handler = ?*const fn (libinput: ?*struct_libinput, priority: enum_libinput_log_priority, format: [*c]const u8, args: [*c]struct___va_list_tag_1) callconv(.c) void;
pub extern fn libinput_log_set_handler(libinput: ?*struct_libinput, log_handler: libinput_log_handler) void;
pub extern fn libinput_seat_ref(seat: ?*struct_libinput_seat) ?*struct_libinput_seat;
pub extern fn libinput_seat_unref(seat: ?*struct_libinput_seat) ?*struct_libinput_seat;
pub extern fn libinput_seat_set_user_data(seat: ?*struct_libinput_seat, user_data: ?*anyopaque) void;
pub extern fn libinput_seat_get_user_data(seat: ?*struct_libinput_seat) ?*anyopaque;
pub extern fn libinput_seat_get_context(seat: ?*struct_libinput_seat) ?*struct_libinput;
pub extern fn libinput_seat_get_physical_name(seat: ?*struct_libinput_seat) [*c]const u8;
pub extern fn libinput_seat_get_logical_name(seat: ?*struct_libinput_seat) [*c]const u8;
pub extern fn libinput_device_ref(device: ?*struct_libinput_device) ?*struct_libinput_device;
pub extern fn libinput_device_unref(device: ?*struct_libinput_device) ?*struct_libinput_device;
pub extern fn libinput_device_set_user_data(device: ?*struct_libinput_device, user_data: ?*anyopaque) void;
pub extern fn libinput_device_get_user_data(device: ?*struct_libinput_device) ?*anyopaque;
pub extern fn libinput_device_get_context(device: ?*struct_libinput_device) ?*struct_libinput;
pub extern fn libinput_device_get_device_group(device: ?*struct_libinput_device) ?*struct_libinput_device_group;
pub extern fn libinput_device_get_sysname(device: ?*struct_libinput_device) [*c]const u8;
pub extern fn libinput_device_get_name(device: ?*struct_libinput_device) [*c]const u8;
pub extern fn libinput_device_get_id_bustype(device: ?*struct_libinput_device) c_uint;
pub extern fn libinput_device_get_id_product(device: ?*struct_libinput_device) c_uint;
pub extern fn libinput_device_get_id_vendor(device: ?*struct_libinput_device) c_uint;
pub extern fn libinput_device_get_output_name(device: ?*struct_libinput_device) [*c]const u8;
pub extern fn libinput_device_get_seat(device: ?*struct_libinput_device) ?*struct_libinput_seat;
pub extern fn libinput_device_set_seat_logical_name(device: ?*struct_libinput_device, name: [*c]const u8) c_int;
pub extern fn libinput_device_get_udev_device(device: ?*struct_libinput_device) ?*struct_udev_device;
pub extern fn libinput_device_led_update(device: ?*struct_libinput_device, leds: enum_libinput_led) void;
pub extern fn libinput_device_has_capability(device: ?*struct_libinput_device, capability: enum_libinput_device_capability) c_int;
pub extern fn libinput_device_get_size(device: ?*struct_libinput_device, width: [*c]f64, height: [*c]f64) c_int;
pub extern fn libinput_device_pointer_has_button(device: ?*struct_libinput_device, code: u32) c_int;
pub extern fn libinput_device_keyboard_has_key(device: ?*struct_libinput_device, code: u32) c_int;
pub extern fn libinput_device_touch_get_touch_count(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_switch_has_switch(device: ?*struct_libinput_device, sw: enum_libinput_switch) c_int;
pub extern fn libinput_device_tablet_pad_get_num_buttons(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_tablet_pad_get_num_dials(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_tablet_pad_get_num_rings(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_tablet_pad_get_num_strips(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_tablet_pad_has_key(device: ?*struct_libinput_device, code: u32) c_int;
pub extern fn libinput_device_group_ref(group: ?*struct_libinput_device_group) ?*struct_libinput_device_group;
pub extern fn libinput_device_group_unref(group: ?*struct_libinput_device_group) ?*struct_libinput_device_group;
pub extern fn libinput_device_group_set_user_data(group: ?*struct_libinput_device_group, user_data: ?*anyopaque) void;
pub extern fn libinput_device_group_get_user_data(group: ?*struct_libinput_device_group) ?*anyopaque;
pub const LIBINPUT_CONFIG_STATUS_SUCCESS: c_int = 0;
pub const LIBINPUT_CONFIG_STATUS_UNSUPPORTED: c_int = 1;
pub const LIBINPUT_CONFIG_STATUS_INVALID: c_int = 2;
pub const enum_libinput_config_status = c_uint;
pub extern fn libinput_config_status_to_str(status: enum_libinput_config_status) [*c]const u8;
pub const LIBINPUT_CONFIG_TAP_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_TAP_ENABLED: c_int = 1;
pub const enum_libinput_config_tap_state = c_uint;
pub extern fn libinput_device_config_tap_get_finger_count(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_tap_set_enabled(device: ?*struct_libinput_device, enable: enum_libinput_config_tap_state) enum_libinput_config_status;
pub extern fn libinput_device_config_tap_get_enabled(device: ?*struct_libinput_device) enum_libinput_config_tap_state;
pub extern fn libinput_device_config_tap_get_default_enabled(device: ?*struct_libinput_device) enum_libinput_config_tap_state;
pub const LIBINPUT_CONFIG_TAP_MAP_LRM: c_int = 0;
pub const LIBINPUT_CONFIG_TAP_MAP_LMR: c_int = 1;
pub const enum_libinput_config_tap_button_map = c_uint;
pub const LIBINPUT_CONFIG_CLICKFINGER_MAP_LRM: c_int = 0;
pub const LIBINPUT_CONFIG_CLICKFINGER_MAP_LMR: c_int = 1;
pub const enum_libinput_config_clickfinger_button_map = c_uint;
pub extern fn libinput_device_config_tap_set_button_map(device: ?*struct_libinput_device, map: enum_libinput_config_tap_button_map) enum_libinput_config_status;
pub extern fn libinput_device_config_tap_get_button_map(device: ?*struct_libinput_device) enum_libinput_config_tap_button_map;
pub extern fn libinput_device_config_tap_get_default_button_map(device: ?*struct_libinput_device) enum_libinput_config_tap_button_map;
pub const LIBINPUT_CONFIG_DRAG_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_DRAG_ENABLED: c_int = 1;
pub const enum_libinput_config_drag_state = c_uint;
pub extern fn libinput_device_config_tap_set_drag_enabled(device: ?*struct_libinput_device, enable: enum_libinput_config_drag_state) enum_libinput_config_status;
pub extern fn libinput_device_config_tap_get_drag_enabled(device: ?*struct_libinput_device) enum_libinput_config_drag_state;
pub extern fn libinput_device_config_tap_get_default_drag_enabled(device: ?*struct_libinput_device) enum_libinput_config_drag_state;
pub const LIBINPUT_CONFIG_DRAG_LOCK_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_DRAG_LOCK_ENABLED_TIMEOUT: c_int = 1;
pub const LIBINPUT_CONFIG_DRAG_LOCK_ENABLED: c_int = 1;
pub const LIBINPUT_CONFIG_DRAG_LOCK_ENABLED_STICKY: c_int = 2;
pub const enum_libinput_config_drag_lock_state = c_uint;
pub extern fn libinput_device_config_tap_set_drag_lock_enabled(device: ?*struct_libinput_device, enable: enum_libinput_config_drag_lock_state) enum_libinput_config_status;
pub extern fn libinput_device_config_tap_get_drag_lock_enabled(device: ?*struct_libinput_device) enum_libinput_config_drag_lock_state;
pub extern fn libinput_device_config_tap_get_default_drag_lock_enabled(device: ?*struct_libinput_device) enum_libinput_config_drag_lock_state;
pub const LIBINPUT_CONFIG_3FG_DRAG_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_3FG_DRAG_ENABLED_3FG: c_int = 1;
pub const LIBINPUT_CONFIG_3FG_DRAG_ENABLED_4FG: c_int = 2;
pub const enum_libinput_config_3fg_drag_state = c_uint;
pub extern fn libinput_device_config_3fg_drag_get_finger_count(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_3fg_drag_set_enabled(device: ?*struct_libinput_device, enable: enum_libinput_config_3fg_drag_state) enum_libinput_config_status;
pub extern fn libinput_device_config_3fg_drag_get_enabled(device: ?*struct_libinput_device) enum_libinput_config_3fg_drag_state;
pub extern fn libinput_device_config_3fg_drag_get_default_enabled(device: ?*struct_libinput_device) enum_libinput_config_3fg_drag_state;
pub extern fn libinput_device_config_calibration_has_matrix(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_calibration_set_matrix(device: ?*struct_libinput_device, matrix: [*c]const f32) enum_libinput_config_status;
pub extern fn libinput_device_config_calibration_get_matrix(device: ?*struct_libinput_device, matrix: [*c]f32) c_int;
pub extern fn libinput_device_config_calibration_get_default_matrix(device: ?*struct_libinput_device, matrix: [*c]f32) c_int;
pub const struct_libinput_config_area_rectangle = extern struct {
    x1: f64 = 0,
    y1: f64 = 0,
    x2: f64 = 0,
    y2: f64 = 0,
};
pub extern fn libinput_device_config_area_has_rectangle(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_area_set_rectangle(device: ?*struct_libinput_device, rect: [*c]const struct_libinput_config_area_rectangle) enum_libinput_config_status;
pub extern fn libinput_device_config_area_get_rectangle(device: ?*struct_libinput_device) struct_libinput_config_area_rectangle;
pub extern fn libinput_device_config_area_get_default_rectangle(device: ?*struct_libinput_device) struct_libinput_config_area_rectangle;
pub const LIBINPUT_CONFIG_SEND_EVENTS_ENABLED: c_int = 0;
pub const LIBINPUT_CONFIG_SEND_EVENTS_DISABLED: c_int = 1;
pub const LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE: c_int = 2;
pub const enum_libinput_config_send_events_mode = c_uint;
pub extern fn libinput_device_config_send_events_get_modes(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_send_events_set_mode(device: ?*struct_libinput_device, mode: u32) enum_libinput_config_status;
pub extern fn libinput_device_config_send_events_get_mode(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_send_events_get_default_mode(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_accel_is_available(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_accel_set_speed(device: ?*struct_libinput_device, speed: f64) enum_libinput_config_status;
pub extern fn libinput_device_config_accel_get_speed(device: ?*struct_libinput_device) f64;
pub extern fn libinput_device_config_accel_get_default_speed(device: ?*struct_libinput_device) f64;
pub const LIBINPUT_CONFIG_ACCEL_PROFILE_NONE: c_int = 0;
pub const LIBINPUT_CONFIG_ACCEL_PROFILE_FLAT: c_int = 1;
pub const LIBINPUT_CONFIG_ACCEL_PROFILE_ADAPTIVE: c_int = 2;
pub const LIBINPUT_CONFIG_ACCEL_PROFILE_CUSTOM: c_int = 4;
pub const enum_libinput_config_accel_profile = c_uint;
pub const struct_libinput_config_accel = opaque {
    pub const libinput_config_accel_destroy = __root.libinput_config_accel_destroy;
    pub const libinput_config_accel_set_points = __root.libinput_config_accel_set_points;
    pub const destroy = __root.libinput_config_accel_destroy;
    pub const set_points = __root.libinput_config_accel_set_points;
};
pub extern fn libinput_config_accel_create(profile: enum_libinput_config_accel_profile) ?*struct_libinput_config_accel;
pub extern fn libinput_config_accel_destroy(accel_config: ?*struct_libinput_config_accel) void;
pub extern fn libinput_device_config_accel_apply(device: ?*struct_libinput_device, accel_config: ?*struct_libinput_config_accel) enum_libinput_config_status;
pub const LIBINPUT_ACCEL_TYPE_FALLBACK: c_int = 0;
pub const LIBINPUT_ACCEL_TYPE_MOTION: c_int = 1;
pub const LIBINPUT_ACCEL_TYPE_SCROLL: c_int = 2;
pub const enum_libinput_config_accel_type = c_uint;
pub extern fn libinput_config_accel_set_points(accel_config: ?*struct_libinput_config_accel, accel_type: enum_libinput_config_accel_type, step: f64, npoints: usize, points: [*c]const f64) enum_libinput_config_status;
pub extern fn libinput_device_config_accel_get_profiles(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_accel_set_profile(device: ?*struct_libinput_device, profile: enum_libinput_config_accel_profile) enum_libinput_config_status;
pub extern fn libinput_device_config_accel_get_profile(device: ?*struct_libinput_device) enum_libinput_config_accel_profile;
pub extern fn libinput_device_config_accel_get_default_profile(device: ?*struct_libinput_device) enum_libinput_config_accel_profile;
pub extern fn libinput_device_config_scroll_has_natural_scroll(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_scroll_set_natural_scroll_enabled(device: ?*struct_libinput_device, enable: c_int) enum_libinput_config_status;
pub extern fn libinput_device_config_scroll_get_natural_scroll_enabled(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_scroll_get_default_natural_scroll_enabled(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_left_handed_is_available(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_left_handed_set(device: ?*struct_libinput_device, left_handed: c_int) enum_libinput_config_status;
pub extern fn libinput_device_config_left_handed_get(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_left_handed_get_default(device: ?*struct_libinput_device) c_int;
pub const LIBINPUT_CONFIG_CLICK_METHOD_NONE: c_int = 0;
pub const LIBINPUT_CONFIG_CLICK_METHOD_BUTTON_AREAS: c_int = 1;
pub const LIBINPUT_CONFIG_CLICK_METHOD_CLICKFINGER: c_int = 2;
pub const enum_libinput_config_click_method = c_uint;
pub extern fn libinput_device_config_click_get_methods(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_click_set_method(device: ?*struct_libinput_device, method: enum_libinput_config_click_method) enum_libinput_config_status;
pub extern fn libinput_device_config_click_get_method(device: ?*struct_libinput_device) enum_libinput_config_click_method;
pub extern fn libinput_device_config_click_get_default_method(device: ?*struct_libinput_device) enum_libinput_config_click_method;
pub extern fn libinput_device_config_click_set_clickfinger_button_map(device: ?*struct_libinput_device, map: enum_libinput_config_clickfinger_button_map) enum_libinput_config_status;
pub extern fn libinput_device_config_click_get_clickfinger_button_map(device: ?*struct_libinput_device) enum_libinput_config_clickfinger_button_map;
pub extern fn libinput_device_config_click_get_default_clickfinger_button_map(device: ?*struct_libinput_device) enum_libinput_config_clickfinger_button_map;
pub const LIBINPUT_CONFIG_MIDDLE_EMULATION_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_MIDDLE_EMULATION_ENABLED: c_int = 1;
pub const enum_libinput_config_middle_emulation_state = c_uint;
pub extern fn libinput_device_config_middle_emulation_is_available(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_middle_emulation_set_enabled(device: ?*struct_libinput_device, enable: enum_libinput_config_middle_emulation_state) enum_libinput_config_status;
pub extern fn libinput_device_config_middle_emulation_get_enabled(device: ?*struct_libinput_device) enum_libinput_config_middle_emulation_state;
pub extern fn libinput_device_config_middle_emulation_get_default_enabled(device: ?*struct_libinput_device) enum_libinput_config_middle_emulation_state;
pub const LIBINPUT_CONFIG_SCROLL_NO_SCROLL: c_int = 0;
pub const LIBINPUT_CONFIG_SCROLL_2FG: c_int = 1;
pub const LIBINPUT_CONFIG_SCROLL_EDGE: c_int = 2;
pub const LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN: c_int = 4;
pub const LIBINPUT_CONFIG_SCROLL_CIRCULAR: c_int = 8;
pub const enum_libinput_config_scroll_method = c_uint;
pub extern fn libinput_device_config_scroll_get_methods(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_scroll_set_method(device: ?*struct_libinput_device, method: enum_libinput_config_scroll_method) enum_libinput_config_status;
pub extern fn libinput_device_config_scroll_get_method(device: ?*struct_libinput_device) enum_libinput_config_scroll_method;
pub extern fn libinput_device_config_scroll_get_default_method(device: ?*struct_libinput_device) enum_libinput_config_scroll_method;
pub extern fn libinput_device_config_scroll_set_button(device: ?*struct_libinput_device, button: u32) enum_libinput_config_status;
pub extern fn libinput_device_config_scroll_get_button(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_scroll_get_default_button(device: ?*struct_libinput_device) u32;
pub const LIBINPUT_CONFIG_SCROLL_BUTTON_LOCK_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_SCROLL_BUTTON_LOCK_ENABLED: c_int = 1;
pub const enum_libinput_config_scroll_button_lock_state = c_uint;
pub extern fn libinput_device_config_scroll_set_button_lock(device: ?*struct_libinput_device, state: enum_libinput_config_scroll_button_lock_state) enum_libinput_config_status;
pub extern fn libinput_device_config_scroll_get_button_lock(device: ?*struct_libinput_device) enum_libinput_config_scroll_button_lock_state;
pub extern fn libinput_device_config_scroll_get_default_button_lock(device: ?*struct_libinput_device) enum_libinput_config_scroll_button_lock_state;
pub const LIBINPUT_CONFIG_DWT_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_DWT_ENABLED: c_int = 1;
pub const enum_libinput_config_dwt_state = c_uint;
pub extern fn libinput_device_config_dwt_is_available(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_dwt_set_enabled(device: ?*struct_libinput_device, enable: enum_libinput_config_dwt_state) enum_libinput_config_status;
pub extern fn libinput_device_config_dwt_get_enabled(device: ?*struct_libinput_device) enum_libinput_config_dwt_state;
pub extern fn libinput_device_config_dwt_get_default_enabled(device: ?*struct_libinput_device) enum_libinput_config_dwt_state;
pub extern fn libinput_device_config_dwt_set_timeout(device: ?*struct_libinput_device, millis: u32) enum_libinput_config_status;
pub extern fn libinput_device_config_dwt_get_timeout(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_dwt_get_default_timeout(device: ?*struct_libinput_device) u32;
pub const LIBINPUT_CONFIG_DWTP_DISABLED: c_int = 0;
pub const LIBINPUT_CONFIG_DWTP_ENABLED: c_int = 1;
pub const enum_libinput_config_dwtp_state = c_uint;
pub extern fn libinput_device_config_dwtp_is_available(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_dwtp_set_enabled(device: ?*struct_libinput_device, enable: enum_libinput_config_dwtp_state) enum_libinput_config_status;
pub extern fn libinput_device_config_dwtp_get_enabled(device: ?*struct_libinput_device) enum_libinput_config_dwtp_state;
pub extern fn libinput_device_config_dwtp_get_default_enabled(device: ?*struct_libinput_device) enum_libinput_config_dwtp_state;
pub extern fn libinput_device_config_dwtp_set_timeout(device: ?*struct_libinput_device, millis: u32) enum_libinput_config_status;
pub extern fn libinput_device_config_dwtp_get_timeout(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_dwtp_get_default_timeout(device: ?*struct_libinput_device) u32;
pub extern fn libinput_device_config_rotation_is_available(device: ?*struct_libinput_device) c_int;
pub extern fn libinput_device_config_rotation_set_angle(device: ?*struct_libinput_device, degrees_cw: c_uint) enum_libinput_config_status;
pub extern fn libinput_device_config_rotation_get_angle(device: ?*struct_libinput_device) c_uint;
pub extern fn libinput_device_config_rotation_get_default_angle(device: ?*struct_libinput_device) c_uint;
pub extern fn libinput_tablet_tool_config_pressure_range_is_available(tool: ?*struct_libinput_tablet_tool) c_int;
pub extern fn libinput_tablet_tool_config_pressure_range_set(tool: ?*struct_libinput_tablet_tool, minimum: f64, maximum: f64) enum_libinput_config_status;
pub extern fn libinput_tablet_tool_config_pressure_range_get_minimum(tool: ?*struct_libinput_tablet_tool) f64;
pub extern fn libinput_tablet_tool_config_pressure_range_get_maximum(tool: ?*struct_libinput_tablet_tool) f64;
pub extern fn libinput_tablet_tool_config_pressure_range_get_default_minimum(tool: ?*struct_libinput_tablet_tool) f64;
pub extern fn libinput_tablet_tool_config_pressure_range_get_default_maximum(tool: ?*struct_libinput_tablet_tool) f64;
pub const LIBINPUT_CONFIG_ERASER_BUTTON_DEFAULT: c_int = 0;
pub const LIBINPUT_CONFIG_ERASER_BUTTON_BUTTON: c_int = 1;
pub const enum_libinput_config_eraser_button_mode = c_uint;
pub extern fn libinput_tablet_tool_config_eraser_button_get_modes(tool: ?*struct_libinput_tablet_tool) u32;
pub extern fn libinput_tablet_tool_config_eraser_button_set_mode(tool: ?*struct_libinput_tablet_tool, mode: enum_libinput_config_eraser_button_mode) enum_libinput_config_status;
pub extern fn libinput_tablet_tool_config_eraser_button_get_mode(tool: ?*struct_libinput_tablet_tool) enum_libinput_config_eraser_button_mode;
pub extern fn libinput_tablet_tool_config_eraser_button_get_default_mode(tool: ?*struct_libinput_tablet_tool) enum_libinput_config_eraser_button_mode;
pub extern fn libinput_tablet_tool_config_eraser_button_set_button(tool: ?*struct_libinput_tablet_tool, button: u32) enum_libinput_config_status;
pub extern fn libinput_tablet_tool_config_eraser_button_get_button(tool: ?*struct_libinput_tablet_tool) c_uint;
pub extern fn libinput_tablet_tool_config_eraser_button_get_default_button(tool: ?*struct_libinput_tablet_tool) c_uint;

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 7);
pub const __GNUC_MINOR__ = @as(c_int, 1);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 0);
pub const __ARO_EMULATE_NO__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:33:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`"); // <builtin>:34:9
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __HRESET__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __SERIALIZE__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WINT_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 10);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:160:9
pub const __INTMAX_C = __helpers.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:163:9
pub const __UINTMAX_C = __helpers.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // <builtin>:189:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // <builtin>:214:9
pub const __UINT32_C = __helpers.U_SUFFIX;
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // <builtin>:223:9
pub const __UINT64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "ld";
pub const INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_LEAST64_FMTo__ = "lo";
pub const UINT_LEAST64_FMTu__ = "lu";
pub const UINT_LEAST64_FMTx__ = "lx";
pub const UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "ld";
pub const INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_FMTo__ = "lo";
pub const UINT_FAST64_FMTu__ = "lu";
pub const UINT_FAST64_FMTx__ = "lx";
pub const UINT_FAST64_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const LIBINPUT_H = "";
pub const _LIBUDEV_H_ = "";
pub const __STDC_VERSION_STDARG_H__ = @as(c_int, 0);
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /usr/lib/zig/compiler/aro/include/stdarg.h:12:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /usr/lib/zig/compiler/aro/include/stdarg.h:14:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /usr/lib/zig/compiler/aro/include/stdarg.h:15:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/lib/zig/compiler/aro/include/stdarg.h:18:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/lib/zig/compiler/aro/include/stdarg.h:22:9
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _SYS_SYSMACROS_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &maj;
    _ = &min;
    return @as(c_int, 0);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:197:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2Y = @as(c_int, 0);
pub const __GLIBC_USE_ISOC23 = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 202405);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN2K24 = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C23_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 44);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__builtin.has_builtin(name)) {
    _ = &name;
    return __builtin.has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/sys/cdefs.h:55:10
pub const __LEAF = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/sys/cdefs.h:65:11
pub const __LEAF_ATTR = @compileError("unable to translate macro: undefined identifier `__leaf__`"); // /usr/include/sys/cdefs.h:66:11
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`"); // /usr/include/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`"); // /usr/include/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token ''"); // /usr/include/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __attribute_overloadable__ = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin.object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin.object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate macro: undefined identifier `__warning__`"); // /usr/include/sys/cdefs.h:366:10
pub const __errordecl = @compileError("unable to translate macro: undefined identifier `__error__`"); // /usr/include/sys/cdefs.h:367:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/sys/cdefs.h:379:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:410:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:417:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'"); // /usr/include/sys/cdefs.h:419:11
pub const __ASMNAME = @compileError("unable to translate macro: undefined identifier `__USER_LABEL_PREFIX__`"); // /usr/include/sys/cdefs.h:422:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`"); // /usr/include/sys/cdefs.h:452:10
pub const __attribute_alloc_size__ = @compileError("unable to translate macro: undefined identifier `__alloc_size__`"); // /usr/include/sys/cdefs.h:460:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`"); // /usr/include/sys/cdefs.h:469:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`"); // /usr/include/sys/cdefs.h:479:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'"); // /usr/include/sys/cdefs.h:486:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`"); // /usr/include/sys/cdefs.h:492:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`"); // /usr/include/sys/cdefs.h:501:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`"); // /usr/include/sys/cdefs.h:502:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:510:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`"); // /usr/include/sys/cdefs.h:520:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`"); // /usr/include/sys/cdefs.h:533:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`"); // /usr/include/sys/cdefs.h:543:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`"); // /usr/include/sys/cdefs.h:555:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`"); // /usr/include/sys/cdefs.h:568:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`"); // /usr/include/sys/cdefs.h:577:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`"); // /usr/include/sys/cdefs.h:595:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`"); // /usr/include/sys/cdefs.h:604:10
pub const __extern_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:626:11
pub const __extern_always_inline = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:627:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __va_arg_pack = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack`"); // /usr/include/sys/cdefs.h:638:10
pub const __va_arg_pack_len = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack_len`"); // /usr/include/sys/cdefs.h:639:10
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'"); // /usr/include/sys/cdefs.h:666:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub inline fn __attribute_copy__(arg: anytype) void {
    _ = &arg;
    return;
}
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR2_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __LDBL_REDIR_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/sys/cdefs.h:807:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/sys/cdefs.h:808:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __glibc_const_generic = @compileError("unable to translate C expr: expected type instead got 'const'"); // /usr/include/sys/cdefs.h:837:10
pub inline fn __fortified_attr_access(a: anytype, o: anytype, s: anytype) void {
    _ = &a;
    _ = &o;
    _ = &s;
    return;
}
pub inline fn __attr_access(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __attr_access_none(argno: anytype) void {
    _ = &argno;
    return;
}
pub inline fn __attr_dealloc(dealloc: anytype, argno: anytype) void {
    _ = &dealloc;
    _ = &argno;
    return;
}
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`"); // /usr/include/sys/cdefs.h:884:10
pub const __attribute_struct_may_alias__ = @compileError("unable to translate macro: undefined identifier `__may_alias__`"); // /usr/include/sys/cdefs.h:893:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_SYSMACROS_H = @as(c_int, 1);
pub inline fn major(dev: anytype) @TypeOf(gnu_dev_major(dev)) {
    _ = &dev;
    return gnu_dev_major(dev);
}
pub inline fn minor(dev: anytype) @TypeOf(gnu_dev_minor(dev)) {
    _ = &dev;
    return gnu_dev_minor(dev);
}
pub inline fn makedev(maj: anytype, min: anytype) @TypeOf(gnu_dev_makedev(maj, min)) {
    _ = &maj;
    _ = &min;
    return gnu_dev_makedev(maj, min);
}
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __need_size_t = "";
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /usr/lib/zig/compiler/aro/include/stddef.h:18:9
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return __helpers.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & __helpers.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & __helpers.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & __helpers.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & __helpers.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = __helpers.div(@as(c_int, 1024), @as(c_int, 8) * __helpers.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * __helpers.cast(c_int, __helpers.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(__helpers.div(d, __NFDBITS)) {
    _ = &d;
    return __helpers.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return __helpers.cast(__fd_mask, @as(c_ulong, 1) << __helpers.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/struct_mutex.h:55:10
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/thread-shared-types.h:114:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const udev_list_entry_foreach = @compileError("unable to translate C expr: unexpected token 'for'"); // /usr/include/libudev.h:55:9
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = __helpers.L_SUFFIX;
pub const __UINT64_C = __helpers.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = __helpers.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.UL_SUFFIX;
pub const INTMAX_C = __helpers.L_SUFFIX;
pub const UINTMAX_C = __helpers.UL_SUFFIX;
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = __helpers.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = __helpers.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = __helpers.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = __helpers.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & __helpers.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & __helpers.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((__helpers.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (__helpers.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = __helpers.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 1);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 1);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const __f128 = @compileError("unable to translate macro: undefined identifier `f128`"); // /usr/include/bits/floatn.h:72:12
pub const __CFLOAT128 = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn.h:86:12
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 1);
pub const __f32 = @compileError("unable to translate macro: undefined identifier `f32`"); // /usr/include/bits/floatn-common.h:93:12
pub const __f64 = @compileError("unable to translate macro: undefined identifier `f64`"); // /usr/include/bits/floatn-common.h:105:12
pub const __f32x = @compileError("unable to translate macro: undefined identifier `f32x`"); // /usr/include/bits/floatn-common.h:113:12
pub const __f64x = @compileError("unable to translate macro: undefined identifier `f64x`"); // /usr/include/bits/floatn-common.h:125:12
pub const __CFLOAT32 = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:151:12
pub const __CFLOAT64 = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:163:12
pub const __CFLOAT32X = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:171:12
pub const __CFLOAT64X = @compileError("unable to translate: invalid numeric type"); // /usr/include/bits/floatn-common.h:183:12
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const LIBINPUT_ATTRIBUTE_PRINTF = @compileError("unable to translate macro: undefined identifier `format`"); // libinput.h:37:9
pub const LIBINPUT_ATTRIBUTE_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`"); // libinput.h:39:9
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const udev = struct_udev;
pub const udev_list_entry = struct_udev_list_entry;
pub const udev_device = struct_udev_device;
pub const udev_monitor = struct_udev_monitor;
pub const udev_enumerate = struct_udev_enumerate;
pub const udev_queue = struct_udev_queue;
pub const udev_hwdb = struct_udev_hwdb;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const libinput = struct_libinput;
pub const libinput_device = struct_libinput_device;
pub const libinput_device_group = struct_libinput_device_group;
pub const libinput_seat = struct_libinput_seat;
pub const libinput_tablet_tool = struct_libinput_tablet_tool;
pub const libinput_event = struct_libinput_event;
pub const libinput_event_device_notify = struct_libinput_event_device_notify;
pub const libinput_event_keyboard = struct_libinput_event_keyboard;
pub const libinput_event_pointer = struct_libinput_event_pointer;
pub const libinput_event_touch = struct_libinput_event_touch;
pub const libinput_event_gesture = struct_libinput_event_gesture;
pub const libinput_event_tablet_tool = struct_libinput_event_tablet_tool;
pub const libinput_event_tablet_pad = struct_libinput_event_tablet_pad;
pub const libinput_log_priority = enum_libinput_log_priority;
pub const libinput_device_capability = enum_libinput_device_capability;
pub const libinput_key_state = enum_libinput_key_state;
pub const libinput_led = enum_libinput_led;
pub const libinput_button_state = enum_libinput_button_state;
pub const libinput_pointer_axis = enum_libinput_pointer_axis;
pub const libinput_pointer_axis_source = enum_libinput_pointer_axis_source;
pub const libinput_tablet_pad_ring_axis_source = enum_libinput_tablet_pad_ring_axis_source;
pub const libinput_tablet_pad_strip_axis_source = enum_libinput_tablet_pad_strip_axis_source;
pub const libinput_tablet_tool_type = enum_libinput_tablet_tool_type;
pub const libinput_tablet_tool_proximity_state = enum_libinput_tablet_tool_proximity_state;
pub const libinput_tablet_tool_tip_state = enum_libinput_tablet_tool_tip_state;
pub const libinput_tablet_pad_mode_group = struct_libinput_tablet_pad_mode_group;
pub const libinput_switch_state = enum_libinput_switch_state;
pub const libinput_switch = enum_libinput_switch;
pub const libinput_event_switch = struct_libinput_event_switch;
pub const libinput_event_type = enum_libinput_event_type;
pub const libinput_interface = struct_libinput_interface;
pub const libinput_plugin_system_flags = enum_libinput_plugin_system_flags;
pub const libinput_config_status = enum_libinput_config_status;
pub const libinput_config_tap_state = enum_libinput_config_tap_state;
pub const libinput_config_tap_button_map = enum_libinput_config_tap_button_map;
pub const libinput_config_clickfinger_button_map = enum_libinput_config_clickfinger_button_map;
pub const libinput_config_drag_state = enum_libinput_config_drag_state;
pub const libinput_config_drag_lock_state = enum_libinput_config_drag_lock_state;
pub const libinput_config_3fg_drag_state = enum_libinput_config_3fg_drag_state;
pub const libinput_config_area_rectangle = struct_libinput_config_area_rectangle;
pub const libinput_config_send_events_mode = enum_libinput_config_send_events_mode;
pub const libinput_config_accel_profile = enum_libinput_config_accel_profile;
pub const libinput_config_accel = struct_libinput_config_accel;
pub const libinput_config_accel_type = enum_libinput_config_accel_type;
pub const libinput_config_click_method = enum_libinput_config_click_method;
pub const libinput_config_middle_emulation_state = enum_libinput_config_middle_emulation_state;
pub const libinput_config_scroll_method = enum_libinput_config_scroll_method;
pub const libinput_config_scroll_button_lock_state = enum_libinput_config_scroll_button_lock_state;
pub const libinput_config_dwt_state = enum_libinput_config_dwt_state;
pub const libinput_config_dwtp_state = enum_libinput_config_dwtp_state;
pub const libinput_config_eraser_button_mode = enum_libinput_config_eraser_button_mode;
