use <base_support.scad>

$fn=25;

module track(length=1,radius=1,$fn=$fn) {
    translate([0,0,radius/2])
    rotate([90,0,0])
    difference(){
        cylinder(length,r=radius,center=true);
        union(){
            translate([-radius,0,-length/2-1])
            cube([radius*2,radius,length+2]);
            cylinder(length+1,r=radius*0.8,center=true);
        }
    };
}

module support_track(l=10,h=10,r=1,dir=0,slope=90,$fn=$fn){
    base_support(h,r,1,dir,slope);
    translate([0,0,h-0.5])
    rotate([slope-90,0,90+dir])
    track(l,r);
}

//track(25,5,$fn=25);

support_track(dir=30,slope=75);