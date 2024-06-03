module base(r,h,$fn=$fn) {
    linear_extrude(h,scale = 0.5) {
        circle(r*2);
    }
}

base(1,1);