/*if(heartCur >= heartMax) {
    if(Player.state != Player.rest) {
        with (Player) {
            State_Change(rest);
        }
    }
    else if(heartCur <= heartReset){
        with (Player) {
            State_Change(stand);
        }
    }
}*/

heartCur -= 0.025;
if (heartCur < 0) {
    heartCur = 0;
}
