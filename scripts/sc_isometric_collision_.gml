/// sc_isometric_collision(ob_isometric_1, ob_isometric_2)

var _ob1 = argument0
var _ob2 = argument1
/*
    var x1 = _ob1.bbox_left  + _ob1.dX
    var x2 = _ob1.bbox_right + _ob1.dX
    
    var y1 = _ob1.bbox_top    + _ob1.dY
    var y2 = _ob1.bbox_bottom + _ob1.dY
    
    var _h = (_ob1.bbox_bottom - _ob1.bbox_top)*0.5
    var z1 = (_ob1.Z - _h) + _ob1.dZ
    var z2 = (_ob1.Z + _h) + _ob1.dZ

    var ox1 = _ob2.bbox_left  + _ob2.dX
    var ox2 = _ob2.bbox_right + _ob2.dX
    
    var oy1 = _ob2.bbox_top    + _ob2.dY
    var oy2 = _ob2.bbox_bottom + _ob2.dY
    
    var _h = (_ob2.bbox_bottom - _ob2.bbox_top)*0.5
    var oz1 = (_ob2.Z - _h) + _ob2.dZ
    var oz2 = (_ob2.Z + _h) + _ob2.dZ
*/
return false// (rectangle_in_rectangle(x1,y1,x2,y2,ox1,oy1,ox2,oy2) != 0) and (( oz1>z1 and oz1<z2) or (oz2>z1 and oz2<z2))


