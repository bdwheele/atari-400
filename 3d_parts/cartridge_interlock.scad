/* Create a clip that can be used as a cartridge interlock while the 
   motherboard is not in the case */
   
$fn=128;

module interlock_clip() {
    gap = 12;   
    difference() {
        cube([5, 15, gap + 10]);
        translate([-0.5, -0.01, 5]) #cube([6, 10, gap]);        
    }
}

module board_support() {
    cylinder(h=23, d=14);
    cylinder(h=20, d=17);
}



//interlock_clip();
board_support();