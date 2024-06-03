// this is the main file of this project, and the final result

use <track.scad>
use <turn.scad>
use <base.scad>
use <start.scad>
use <spinner.scad>
use <container.scad>

$fn = 25;

// The size of an average marble, in mm
MARBLE_SIZE = 15;

module turn_track(l=5,h=10,angle=0) {
    rotate([0,0,angle]){
        support_track(l,h);
        mirror([0,1,0])
        translate([l/2+2,-2,h])
        turn(angle=90);
        translate([-l/2-2,2,h])
        rotate([0,0,180])
        turn(angle=90);
    }
}

//scale(MARBLE_SIZE) turn_track(1);


module marble_run() {
    translate([0,-10,0]){
        translate([10,0,0])
        start(14.5,angle=180);
        support_track(l=17.5,h=12.5,slope=73);
        translate([-10,4.5])
        turn_track(angle=270);
    }
    
    rotate([0,0,180])
    translate([0,1])
    support_track(l=17.5,h=7.5,slope=73);
    translate([10,3.5])
    turn_track(h=5,angle=90);
    
    translate([0,-1,7])
    rotate([0,0,90])
    spinner(h=2);
    
    translate([0,8,0]){
        support_track(l=16.3,h=3.5,slope=82);
        translate([-10,0,0]){
            translate([0,0,1])
            container();
            cylinder(1,2,1);
        }
    }
}

scale(MARBLE_SIZE)
marble_run();