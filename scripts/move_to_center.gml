///move_to_center(object_instance)
with (argument0){
    xcenter = view_xview[0] + (view_wview[0] / 2);
    ycenter = view_yview[0] + (view_hview[0] / 2);
    if (x > xcenter && abs(xcenter-x)>6){
       x-=7;
    }
    else if (x < xcenter && abs(xcenter-x)>6){
        x+=7;
    }
    if (y > ycenter && abs(ycenter-y)>26){
        y-=7;
    }
    else if (y < ycenter && abs(ycenter-y)>26){
        y+=7;
    }
}
