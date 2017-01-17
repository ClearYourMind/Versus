/// sc_knock(x, y, rad, power)

var _x = argument0
var _y = argument1
var _r = argument2
var _p = argument3


with ob_isometric {
    if isKnockable {
        var _d = point_distance(X, Y, _x, _y)
        if _d < _r {
            isKnocked = true
            var _a = degtorad(360-point_direction(X, Y, _x, _y) )
            knockX = -(_p * cos(_a) * (_d/_r))
            knockY = -(_p * sin(_a) * (_d/_r))
            knockZ = _p * ( (_r-_d)/_r )
        }
    }
}



