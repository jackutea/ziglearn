const std = @import("std");

test "add" {
    const a = 1;
    const b = 2;
    const result = a + b;
    try std.testing.expectEqual(result, 3);
}
