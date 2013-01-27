if (instance_exists(owner) && owner) {
    x = owner.x + offsetX;
    y = owner.y + offsetY;
} else {
    instance_destroy();
}
