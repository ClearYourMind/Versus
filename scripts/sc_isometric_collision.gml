/// sc_isometric_collision(ob_isometric_1, ob_isometric_2)

var _ob1 = argument0
var _ob2 = argument1

with _ob1 {
    var x1 = X + w1 + dX
    var x2 = X + w2 + dX
    
    var y1 = Y + h1 + dY
    var y2 = Y + h2 + dY
    
    var _h = (h2-h1)
    var z1 = (Z+_h) + dZ
    var z2 = Z + dZ
}

with _ob2 {
    var ox1 = X + w1 + dX
    var ox2 = X + w2 + dX
    
    var oy1 = Y + h1 + dY
    var oy2 = Y + h2 + dY
    
    var _h = (h2-h1)
    var oz1 = (Z+_h) + dZ
    var oz2 = Z + dZ
}

return (rectangle_in_rectangle(x1,y1,x2,y2,ox1,oy1,ox2,oy2) != 0) and ((z1>oz2 and z1<=oz1) or (z2>oz2 and z2<=oz1))  //(( oz1>=z1 and oz1<z2) or (oz2>=z1 and oz2<z2))


