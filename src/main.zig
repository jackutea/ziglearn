const std = @import("std");
const Context = @import("Context.zig").Context;
const rl = @import("raylib");

pub fn main() !void {
    rl.initWindow(800, 450, "My first raylib program");
    defer rl.closeWindow();

    const position: rl.Vector2 = .{
        .x = 200,
        .y = 125,
    };

    const color: rl.Color = .{
        .r = 0,
        .g = 255,
        .b = 255,
        .a = 255,
    };

    var ctx: Context = Context.Ctor(position, color);

    while (!rl.windowShouldClose()) {
        rl.beginDrawing();
        defer rl.endDrawing();

        const dt = rl.getFrameTime();

        // Input
        var moveAxis = rl.math.vector2Zero();
        if (rl.isKeyDown(rl.KeyboardKey.key_w)) {
            moveAxis.y = -1;
        } else if (rl.isKeyDown(rl.KeyboardKey.key_s)) {
            moveAxis.y = 1;
        }

        if (rl.isKeyDown(rl.KeyboardKey.key_a)) {
            moveAxis.x = -1;
        } else if (rl.isKeyDown(rl.KeyboardKey.key_d)) {
            moveAxis.x = 1;
        }
        moveAxis = rl.math.vector2Normalize(moveAxis);

        // Move
        const offset = rl.math.vector2Scale(moveAxis, 100 * dt);
        ctx.pos = rl.math.vector2Add(ctx.pos, offset);

        rl.clearBackground(rl.Color.white);

        rl.drawCircleV(
            ctx.pos,
            50,
            color,
        );
    }
}
