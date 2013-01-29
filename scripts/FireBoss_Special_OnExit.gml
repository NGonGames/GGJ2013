var IceDropin = 0;
while (IceDropin < room_width) {    
    instance_create(IceDropin, room_height - 384, FireSpecial);
    IceDropin += 150;
}
