/// sc_bounce(ob_isometric_1, ob_isometric_2)

// ob_isometric_1 bounces

var _ob1 = argument0
var _ob2 = argument1


if instance_exists(_ob1) and instance_exists(_ob2) {
    with _ob1 {
        var x1 = bbox_left   + dX
        var x2 = bbox_right  + dX
        
        var y1 = bbox_top    + dY
        var y2 = bbox_bottom + dY
    }
    
    with _ob2 {
        var ox1 = bbox_left   + dX
        var ox2 = bbox_right  + dX
        
        var oy1 = bbox_top    + dY
        var oy2 = bbox_bottom + dY
    }
    
    // ob1 in ob2 from left
    var inLeft    = ox1 - x2;
    // ob1 in ob2 from right
    var inRight   = ox2 - x1;
    // ob1 in ob2 from above
    var inAbove   = oy1 - y2;
    // ob1 in ob2 from beneath
    var inBeneath = oy2 - y1;
    
    var _bounce_x = min(inLeft, inRight)
    var _bounce_y = min(inAbove, inBeneath);
    
    X -= dX
    Y -= dY
    
    X += _bounce_x
    Y += _bounce_y
    
    dX = 0
    dY = 0

}


