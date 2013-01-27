if (sprite != -1) {
    draw_sprite_ext(iff(!sign(vel.x), sprite.left, sprite.right), sprite.index,
                    x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
