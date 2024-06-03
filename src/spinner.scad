use <track.scad>
$fn = 25;

//TODO
module spinner(l=1,w=2,h=1,r=0.15,$fn=$fn){
    translate([0,0,h])
    spoons(1.5);
    translate([1,0,0])
    stand(h=h,r=r);
    translate([-0.8,0,0])
    stand(h=h,r=r);
}

module spoon(l=0.8,w=0.1,h=1){
    translate([-l/2,0,-h])
    cube([l,w,h]);
}

module spoons(h=1,count=6){
    for(i = [1:count]){
        rotate([(360/count)*i,0,0])
        spoon(h=h);
    }
    rotate([0,90,0])
    cylinder(2.5,r=0.1,center=true);
}

module stand(l=1,w=0.2,h=1,r=0.2){
    translate([0,-l/2,0])
    rotate([0,270,0])
    linear_extrude(w)
    difference(){
        union(){
            square([h,l]);
            translate([h,l/2,0])
            circle(d=l);
        }
        translate([h,l/2,0])
        circle(r);
    }
}

spinner(h=2);
translate([0,0,-0.5])
%track(10,$fn=25);