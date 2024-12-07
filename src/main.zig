const std = @import("std");
const rl = @import("raylib");

pub fn main() !void {
    rl.initWindow(800, 450, "My first raylib program");
    defer rl.closeWindow();

    while (!rl.windowShouldClose()) {
        rl.beginDrawing();
        defer rl.endDrawing();

        const color: rl.Color = .{
            .r = 0,
            .g = 255,
            .b = 255,
            .a = 255,
        };
        rl.clearBackground(color);
    }
}
