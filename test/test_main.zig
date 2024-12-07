const std = @import("std");

test "main" {
    const a = 1;
    const b = 2;
    const result = a + b;
    try std.testing.expectEqual(result, 3);
}
