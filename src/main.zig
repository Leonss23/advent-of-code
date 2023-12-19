const std = @import("std");
const day1 = @import("day1-1.zig");

pub fn main() !void {
    // var aa = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    // defer aa.deinit();
    // const allocator = aa.allocator();
    // _ = allocator;

    day1.run();
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}