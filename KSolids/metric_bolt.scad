// KSolids Metric Bolts v1.0
// TheNewHobbyist 2013 http://thenewhobbyist.com
// e-mail: chris@thenewhobbyist
// twitter: @thenewhobbyist
//
// Description: 
// This is a library for generating metric bolts.
// Bolts can be generated up to M20 size. Note that not all
// head types support all sizes.
//
// Used the measurements available here:
// 
//
// Usage:
// metric_bolt(m=<m bolt size>, head=<head style>, length=bolt length);
//
// Available bolt heads:	Socket Capscrew
//							Panhead Machine
//							Hexhead Machine
//							Flathead Machine
//							Flathead Capscrew
//
// This work is licensed under a Creative Commons Attribution 3.0 Unported License.
//

socket_capscrew_head = [0,0,3.98,5.68,7.22,8.72,10.22,0,13.27,0,16.27,0,18.27,0,21.33,0,24.33,0,0,0,30.33];
socket_capscrew_height = [0,0,2,3,4,5,6,0,8,0,10,0,12,0,14,0,16,0,0,0,20];
socket_capscrew_hole = [0,0,1.5,2.5,3,4,5,0,6,0,8,0,10,0,12,0,14,0,0,0,17];

panhead_machine_head = [0,0,4,5.6,8,9.5,12,0,16,0,20];
panhead_machine_height = [0,0,1.6,2.4,3.1,3.7,4.6,0,6,0,7.5];
panhead_machine_hole = .5;

hexhead_machine_head = [0,0,3.2,5,7,8,10,0,13,0,16];
hexhead_machine_height = [0,0,1.6,2.3,3,3.8,4.7,0,6,0,7.5];

flathead_machine_head = [0,0,4.4,6.3,9.4,10.4,12.6,0,17.3,0,20];
flathead_machine_height = [0,0,1.2,1.7,2.7,2.7,3.3,0,4.6,0,5];
flathead_machine_hole = .5;

flathead_capscrew_head = [0,0,0,6.72,8.96,11.2,13.44,0,17.92,0,22.4,0,26.88,0,30.24,0,33.6,0,36.96,0,40.32];
flathead_capscrew_height = [0,0,0,1.86,2.48,3.1,3.72,0,4.96,0,6.2,0,7.44,0,8.12,0,8.8,0,9.48,0,10.16];
flathead_capscrew_hole = [0,0,0,2,2.5,3,4,0,5,0,6,0,8,0,10,0,10,0,12,0,12];

module metric_bolt(m, head, length) {
if (head == "socket_capscrew") {
	difference() {
		union(){
			cylinder(r=socket_capscrew_head[m]/2, h=socket_capscrew_height[m] - .5, $fn=25);
			translate([0,0,-.5]) cylinder(r1=socket_capscrew_head[m]/2 - 1, r2=socket_capscrew_head[m]/2, h=0.5, $fn=25);
			translate([0,0,socket_capscrew_height[m] - .5]) cylinder(r1=socket_capscrew_head[m]/2, r2=1.75, h=0.1, $fn=25);
			translate([0,0,socket_capscrew_height[m] - .5]) cylinder(r=m/2, h=length, $fn=25);
			translate([0,0,socket_capscrew_height[m] + length - .5]) cylinder(r1=m/2, r2=m/4, h=.5, $fn=25);
			}
		translate([0,0,-1.5]) cylinder(r=socket_capscrew_hole[m]/2, h=2, $fn=6);
			}		
	}
else if (head == "panhead_machine") {
	difference() {
		union(){
			translate([0,0,.2]) cylinder(r=panhead_machine_head[m]/2, h=panhead_machine_height[m], $fn=25);
			cylinder(r1=panhead_machine_head[m]/2 - panhead_machine_head[m]*.07, r2=panhead_machine_head[m]/2, h=.2, $fn=25);
			translate([0,0,panhead_machine_height[m]]) cylinder(r=m/2, h=length, $fn=25);
			translate([0,0,panhead_machine_height[m] + length]) cylinder(r1=m/2, r2=m/4, h=.5, $fn=25);
			}
		translate([-panhead_machine_hole/2,-1.5,-.1]) cube(size=[panhead_machine_hole, 3, 1]);
		translate([-1.5,-panhead_machine_hole/2,-.1]) cube(size=[3, panhead_machine_hole, 1]);
			}		
	}
else if (head == "hexhead_machine") {
	union(){
		translate([0,0,.2]) cylinder(r=hexhead_machine_head[m], h=hexhead_machine_height[m], $fn=6);
		cylinder(r1=hexhead_machine_head[m] - hexhead_machine_head[m]*.1, r2=hexhead_machine_head[m], h=.2, $fn=6);
		translate([0,0,hexhead_machine_height[m]]) cylinder(r=m/2, h=length, $fn=25);
		translate([0,0,hexhead_machine_height[m] + length]) cylinder(r1=m/2, r2=m/4, h=.5, $fn=25);
		}				
	}
else if (head == "flathead_machine") {
	difference() {
		union(){
			cylinder(r1=flathead_machine_head[m]/2, r2=m/2, h=flathead_machine_height[m], $fn=25);
			translate([0,0,flathead_machine_height[m]]) cylinder(r=m/2, h=length, $fn=25);
			translate([0,0,flathead_machine_height[m] + length]) cylinder(r1=m/2, r2=m/4, h=.5, $fn=25);
			}
		translate([-flathead_machine_hole/2,-1.5,-.1]) cube(size=[flathead_machine_hole, 3, .5]);
		translate([-1.5,-flathead_machine_hole/2,-.1]) cube(size=[3, flathead_machine_hole, .5]);
			}		
	}
else if (head == "flathead_capscrew") {
	difference() {
		union(){
			cylinder(r1=flathead_capscrew_head[m]/2, r2=m/2, h=flathead_capscrew_height[m], $fn=25);
			translate([0,0,flathead_capscrew_height[m]]) cylinder(r=m/2, h=length, $fn=25);
			translate([0,0,flathead_capscrew_height[m] + length]) cylinder(r1=m/2, r2=m/4, h=.5, $fn=25);
			}
		translate([0,0,-.1]) cylinder(r=flathead_capscrew_hole[m]/2, h=1, $fn=6);
			}		
	}
}