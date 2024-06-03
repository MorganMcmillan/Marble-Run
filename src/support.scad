module support(h,r=1,dir=0,slope=90,$fn=$fn) {
    difference(){
        cylinder(h,r=r);
        translate([0,0,h])
        rotate([0,slope,dir])
        cylinder(h,r=r,center=true);
    }
}

support(10,1,dir=45,$fn=25);