const rl = @import("raylib");

pub const Context = struct {
    pos: rl.Vector2,
    color: rl.Color,

    pub fn Ctor(pos: rl.Vector2, color: rl.Color) Context {
        return Context{ .pos = pos, .color = color };
    }
};
