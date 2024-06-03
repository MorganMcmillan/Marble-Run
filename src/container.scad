module container(h=1,r=1,angle=0,$fn=$fn){
    rotate([0,0,angle])
    difference(){
        cylinder(h,r=r*2);
        union(){
            translate([0,0,0.1])
            cylinder(h+1,r=r*2*0.9);
            translate([r*1.5,0,h])
            rotate([0,90,0])
            cylinder(r=r);
        }
    }
}


container(1,1,180,25);