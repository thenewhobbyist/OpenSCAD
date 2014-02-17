// KSolids Batteries v1.0
// TheNewHobbyist 2013 http://thenewhobbyist.com
// e-mail: chris@thenewhobbyist
// twitter: @thenewhobbyist
//
// Description: 
// This is a library of the industry standard dimensions 
// available on http://data.energizer.com/
// 
// When available I used the maxiumum allowed size for
// dimensions. Better safe than sorry.
//
// This work is licensed under a Creative Commons Attribution 3.0 Unported License.
//

module 2cr5_battery(){
	union() {
		translate([0,8.2,0]) cylinder(r=8.5, h=45, center=true, $fn=100);
		translate([0,-8.2,0]) cylinder(r=8.5, h=45, center=true, $fn=100);
		translate([3.5,0,0]) cube(size=[10, 20, 45], center=true, $fn=100);
		}
	}

module 3lr12_battery() {
	union(){
		hull(){
			translate([0,20,0]) cylinder(r=10, h=67, center=true);
			translate([0,-20,0]) cylinder(r=10, h=67, center=true);
			}
		}
	}

module 4lr44_battery() {
	union() {
		cylinder(r=6.5, h=23.9, center=true, $fn=100);
		translate([0,0,.5]) cylinder(r=3, h=23.9, center=true, $fn=100);
		translate([0,0,-.25]) cylinder(r=3, h=23.9, center=true, $fn=100);
		}
	}

module 9v_battery() {
	union() {
		translate([-10.8,-5.3,0]) {	
			minkowski() {
				cube(size=[21.7, 10.7, 36.5], center=true);
				translate([10.85,5.35,0]) cylinder(r=2.3, h=10, center=true);
				}
			}
		translate([-6.625,0,23.8]) cylinder(r=4, h=2.5, center=true, $fn=6);
		translate([6.625,0,23.8]) cylinder(r=3.2, h=2.5, center=true, $fn=100);
		}
	}

module aa_battery() {
	union() {
		cylinder(r=7.25, h=49.5, center=true, $fn=100);
		translate([0,0,1]) cylinder(r=2.75, h=49.5, center=true, $fn=100);
		translate([0,0,-.1]) cylinder(r=3.5, h=49.5, center=true, $fn=100);
		}
	}

module aaa_battery() {
	union() {
		cylinder(r=5.25, h=44.5, center=true, $fn=100);
		translate([0,0,.8]) cylinder(r=1.9, h=44.5, center=true, $fn=100);
		translate([0,0,-.1]) cylinder(r=2.15, h=44.5, center=true, $fn=100);
		}
	}

module aaaa_battery() {
	union() {
		cylinder(r=4.15, h=40.7, center=true, $fn=100);
		translate([0,0,.7]) cylinder(r=1.9, h=40.7, center=true, $fn=100);
		translate([0,0,-.1]) cylinder(r=1.15, h=40.7, center=true, $fn=100);
		}
	}

module br1225_battery() {
	cylinder(r=6.25, h=2.5, center=true, $fn=100);
	}

module c_battery() {
	union() {
		cylinder(r=13.1, h=48.5, center=true, $fn=100);
		translate([0,0,1.5]) cylinder(r=3.75, h=48.5, center=true, $fn=100);
		translate([0,0,-.4]) cylinder(r=6.5, h=48.5, center=true, $fn=100);
		}
	}	

module cr2_battery() {
	union() {
		cylinder(r=7.8, h=25.8, center=true, $fn=100);
		translate([0,0,.7]) cylinder(r=3.25, h=25.8, center=true, $fn=100);
		}
	}	

module cr1025_battery() {
	cylinder(r=5, h=2.5, center=true, $fn=100);
	}

module cr1220_battery() {
	cylinder(r=6.25, h=1.6, center=true, $fn=100);
	}

module cr1616_battery() {
	cylinder(r=8, h=1.6, center=true, $fn=100);
	}

module cr1620_battery() {
	cylinder(r=8, h=2, center=true, $fn=100);
	}

module cr2016_battery() {
	cylinder(r=10, h=0.8, center=true, $fn=100);
	}

module cr2025_battery() {
	cylinder(r=10, h=1.25, center=true, $fn=100);
	}

module cr2032_battery() {
	cylinder(r=10, h=1.6, center=true, $fn=100);
	}

module cr2430_battery() {
	cylinder(r=12.25, h=3, center=true, $fn=100);
	}

module cr2450_battery() {
	cylinder(r=12.25, h=3.45, center=true, $fn=100);
	}

module cr11108_battery() {
	cylinder(r=5.8, h=10.8, center=true, $fn=100);
	}

module cr17345_battery() {
	difference() {
		union() {
			cylinder(r=8.5, h=33.5, center=true, $fn=100);
			translate([0,0,.5]) cylinder(r=4, h=33.5, center=true, $fn=100);
			}
		translate([0,0,-16.5]) cylinder(r=5.5, h=1, center=true, $fn=100);
		}
	}

module crp2_battery() {
	union() {
		translate([8.4,0,0]) cylinder(r=9.75, h=36, center=true, $fn=100);
		translate([-8.4,0,0]) cylinder(r=9.75, h=36, center=true, $fn=100);
		translate([0,-4.8,0]) cube(size=[15, 10, 36], center=true);
		} 
	}

module d_battery() {
	union() {
		cylinder(r=17.1, h=59.5, center=true, $fn=100);
		translate([0,0,1.5]) cylinder(r=4.75, h=59.5, center=true, $fn=100);
		translate([0,0,-.4]) cylinder(r=9, h=59.5, center=true, $fn=100);
		}
	}

module f_battery() {
	union() {
		cylinder(r=17.1, h=87.3, center=true, $fn=100);
		translate([0,0,44]) cylinder(r1=15, r2=4.75, h=.6, center=true, $fn=100);
		}
	}	

module j_battery() {
	union() {
		difference() {
			cube(size=[9.2, 35.6, 48.5], center=true);
			translate([0,20,24]) rotate([45,0,0]) cube(size=[10, 10, 15], center=true);
			}
		}
	}	

module lantern_battery() {
	union() {
		translate([-19.5,-19.4,0]){
			minkowski() {	
				cube(size=[38.9, 38.9, 97], center=true);
				translate([19.45,19.45,0]) cylinder(r=14.7, h=10, center=true, $fn=50);
				}
			}
		translate([0,0,55.5]) cylinder(r=6, h=5, center=true, $fn=100);
		translate([15,15,55.5]) cylinder(r=6, h=5, center=true, $fn=100);
		}
	}

module lr41_battery() {
	cylinder(r=3.95, h=3.6, center=true, $fn=100);
	}

module lr43_battery() {
	cylinder(r=3.95, h=3.6, center=true, $fn=100);
	}

module lr44_battery() {
	cylinder(r=5.8, h=4.2, center=true, $fn=100);
	}

module lr54_battery() {
	cylinder(r=5.8, h=3.05, center=true, $fn=100);
	}

module lr55_battery() {
	cylinder(r=5.8, h=2.1, center=true, $fn=100);
	}

module n_battery() {
	union(){
		cylinder(r=6, h=28.45, center=true, $fn=100);
		translate([0,0,.5]) cylinder(r=2, h=28.45, center=true, $fn=100);
		translate([0,0,-.25]) cylinder(r=2.5, h=28.45, center=true, $fn=100);
		}
	}

module powerwheels_battery() {
	cube(size=[107.95, 139.7, 133.35], center=true);
	}

module pr41_battery() {
	cylinder(r=3.95, h=3.6, center=true, $fn=100);
	}

module pr44_battery() {
	cylinder(r=5.8, h=5.4, center=true, $fn=100);
	}

module pr48_battery() {
	cylinder(r=3.95, h=5.4, center=true, $fn=100);
	}

module pr70_battery() {
	cylinder(r=2.9, h=3.6, center=true, $fn=100);
	}

module sr41_battery() {
	cylinder(r=3.95, h=3.6, center=true, $fn=100);
	}

module sr42_battery() {
	cylinder(r=5.8, h=3.6, center=true, $fn=100);
	}

module sr43_battery() {
	cylinder(r=5.8, h=4.2, center=true, $fn=100);
	}

module sr48_battery() {
	cylinder(r=3.95, h=5.4, center=true, $fn=100);
	}

module sr44_battery() {
	cylinder(r=5.8, h=5.4, center=true, $fn=100);
	}

module sr54_battery() {
	cylinder(r=5.8, h=3.8, center=true, $fn=100);
	}

module sr55_battery() {
	cylinder(r=5.8, h=3.8, center=true, $fn=100);
	}

module sr57_battery() {
	cylinder(r=4.75, h=2.7, center=true, $fn=100);
	}

module sr58_battery() {
	cylinder(r=3.95, h=2.1, center=true, $fn=100);
	}

module sr59_battery() {
	cylinder(r=3.95, h=2.6, center=true, $fn=100);
	}

module sr60_battery() {
	cylinder(r=3.4, h=2.15, center=true, $fn=100);
	}

module sr66_battery() {
	cylinder(r=3.4, h=2.6, center=true, $fn=100);
	}

module sr68_battery() {
	cylinder(r=4.75, h=1.65, center=true, $fn=100);
	}

module sr69_battery() {
	cylinder(r=4.75, h=2.1, center=true, $fn=100);
	}

	3lr12_battery();