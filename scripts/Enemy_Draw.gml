if (state.draw != -1) {
    script_execute(state.draw);
} else if (state.sprite != -1) {
    if(ChangeDirection) {
        lastSprite = iff(!sign(vel.x), state.sprite.left, state.sprite.right );
        draw_sprite_ext(lastSprite, state.sprite.index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    else {
        draw_sprite_ext(lastSprite, state.sprite.index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
}
