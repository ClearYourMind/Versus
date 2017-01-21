/// sc_view_changemode(mode)

switch (argument0) {
case 1:
    view_visible[2] = false
    
    view_wview[1] = view_wview[0]
    view_hview[1] = view_hview[0]
    view_wport[1] = view_wport[0]
    view_hport[1] = view_hport[0]
    
//    var _x = (ob_player.X + ob_player_2.X) * 0.5;
//    var _y = (ob_player.Y + ob_player_2.Y) * 0.5;
//    view_xview[1] = _x - view_wview[1]*0.5
//    view_yview[1] = _y - view_hview[1]*0.5
    
    break
case 2:

    view_wview[1] = view_wview[0] * 0.5
    view_hview[1] = view_hview[0]
    view_wport[1] = view_wport[0] * 0.5
    view_hport[1] = view_hport[0]
    
    view_wview[2] = view_wview[0] * 0.5
    view_hview[2] = view_hview[0]
    view_wport[2] = view_wport[0] * 0.5
    view_hport[2] = view_hport[0]
    
    view_xport[2] = view_wport[0] * 0.5

    
//    view_xview[1] = ob_player.X - view_wview[1] * 0.5;
//    view_yview[1] = ob_player.Y - view_hview[1] * 0.5;

//    view_xview[2] = ob_player_2.X - view_wview[2] * 0.5;
//    view_yview[2] = ob_player_2.Y - view_hview[2] * 0.5;

    view_xview[2] = view_xview[1] + view_wview[1]
    view_yview[2] = view_yview[1]
    
    view_visible[2] = true
    break
}

