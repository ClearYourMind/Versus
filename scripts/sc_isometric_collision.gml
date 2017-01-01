/// sc_isometric_collision(ob_isometric_1, ob_isometric_2)

var _ob1 = argument0
var _ob2 = argument1

with _ob1 {
    var x1 = bbox_left
    var x2 = bbox_right
    
    var _h = (bbox_bottom-bbox_top)*0.5
    var y1 = bbox_top
    var y2 = bbox_bottom
    
    var z1 = Z-_h
    var z2 = Z+_h
}

with _ob2 {
    var ox1 = bbox_left
    var ox2 = bbox_right
    
    var _h = (bbox_bottom-bbox_top)*0.5
    var oy1 = bbox_top
    var oy2 = bbox_bottom
    
    var oz1 = Z-_h
    var oz2 = Z+_h
}

return (rectangle_in_rectangle(x1,y1,x2,y2,ox1,oy1,ox2,oy2) != 0) and (( oz1>z1 and oz1<z2) or (oz2>z1 and oz2<z2))


