const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const zinput = b.addModule("zinput", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
        .link_libcpp = true,
    });

    zinput.linkSystemLibrary("udev", .{ .needed = true, .use_pkg_config = .no });
    zinput.linkSystemLibrary("input", .{ .needed = true, .use_pkg_config = .no });

    const tests = b.addTest(.{
        .name = "zinput",
        .root_module = zinput,
    });
    const run_tests = b.addRunArtifact(tests);
    const test_step = b.step("test", "run testes");
    test_step.dependOn(&run_tests.step);
}
