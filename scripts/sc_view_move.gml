/// sc_view_move(view_id, new_x, new_y)

var _vid = argument0;
var _x = argument1;
var _y = argument2;


var _dx = (_x - view_xview[_vid]) * 0.1;
var _dy = (_y - view_yview[_vid]) * 0.1;
_dx = round(_dx)
_dy = round(_dy)

view_xview[_vid] += _dx
view_yview[_vid] += _dy
if view_xview[_vid] < 0 view_xview[_vid] = 0
if view_yview[_vid] < 0 view_yview[_vid] = 0
if view_xview[_vid] > room_width - view_wview[_vid]
    view_xview[_vid] = room_width - view_wview[_vid]
if view_yview[_vid] > room_height - view_hview[_vid]
    view_yview[_vid] = room_height - view_hview[_vid]
    




