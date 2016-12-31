/// sc_isometric_collision(ob_isometric_1, ob_isometric_2)

var _ob1 = argument0
var _ob2 = argument1

with _ob1 {
    var _w = sprite_width*0.5
    var x1 = X-_w
    var x2 = X+_w
    
    var _h = sprite_height*0.5
    var y1 = Y-_h
    var y2 = Y+_h
    
    var z1 = Z-_h
    var z2 = Z+_h
}

with _ob2 {
    var _w = sprite_width*0.5
    var ox1 = X-_w
    var ox2 = X+_w
    
    var _h = sprite_height*0.5
    var oy1 = Y-_h
    var oy2 = Y+_h
    
    var oz1 = Z-_h
    var oz2 = Z+_h
}

return (rectangle_in_rectangle(x1,y1,x2,y2,ox1,oy1,ox2,oy2) != 0) and (( oz1>z1 and oz1<z2) or (oz2>z1 and oz2<z2))


