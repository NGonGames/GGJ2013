if(heartCur>=heartMax) {
    if(Player.state != Player.rest) {
        with(Player) {
            State_Change(rest);
        }
    }
    else if(heartCur<=heartReset){
        with(Player) {
            State_Change(stand);
        }
    }
}
