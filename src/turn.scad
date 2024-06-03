// The angle of the turn piece
angle=90; // [360]
// Whether or not the track should be reflected
reflect = false;


module turn(size=1,angle=90,reflect=false,$fn=$fn) {
    //TODO
    mirror([reflect?1:0,0,0])
    translate([-size*2,0,0])
    rotate_extrude(angle = angle) {
        translate([size*2,0,0])
        track_shape(size);
    }
}

/* private */ module track_shape(size) {
    difference(){
        circle(size);
        union(){
            translate([-size,0,0])
            square(size);
            circle(size*0.8);
        }
    }
}

turn(1,angle=angle,reflect=reflect,$fn=25);
translate([0,0,5])
track_shape(1);