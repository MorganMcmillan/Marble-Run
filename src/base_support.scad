use <support.scad>
use <base.scad>

module base_support(h=10,r=1,bh=1,dir=0,slope=90,$fn=$fn) {
    union() {
        base(r,bh);
        translate([0,0,bh])
        support(h-bh,r,dir,slope);
    }
}

base_support(10,1,bh=1,$fn=25);