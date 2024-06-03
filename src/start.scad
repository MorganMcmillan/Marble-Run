use <base.scad>
use <container.scad>

$fn = 25;

module start(h=20,r=1,bh=1,angle=0,$fn=$fn){
    base(bh,r);
    translate([0,0,bh])
    cylinder(h-bh,r=r);
    translate([0,0,h])
    container(bh,r,angle);
}
start(angle=0);