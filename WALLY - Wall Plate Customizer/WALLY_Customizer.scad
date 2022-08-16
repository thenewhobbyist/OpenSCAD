/*
	WALLY - Wall Plate Customizer v1.4
	by TheNewHobbyist 2013 (http://thenewhobbyist.com)
	http://www.thingiverse.com/thing:47956

	Most of the connectors used with this thing are panel mount connectors from
	www.DataPro.net I can't vouch for their quality but they did have easy to
	find dimensions for their products so I used them.

	This could be tightened up considerably but I thought I'd get it out there for people
	to experiment with before I lose my mind staring at it too long. Also this is my
	first OpenSCAD model so cut me some slack ;)

	Notes:

	* The plug types "Duplex Outlet", "Long_Toggle Switch", "Toggle Switch", and "Rocker"
	  will all use the entire plate when selected in top or bottom configuration. The
	  other selection (if not "none") will be selected.

	* "None" and "Blank should not be considered equal. if "None" is selected for one of
	  the two holes on a plate the other selection will be centered on that plate. If
	  "Blank" is selected that plug location will remain blank but the other selection
	  will NOT move into a centered position.

		Change Log:

		v1.5
		- Added Neutrik Cutouts (https://www.datapro.net/drawings/cutouts/neutrik_cutout.pdf) per HacksolotFilms's suggestion

		v1.4 - The "I've never used OpenSCAD in my life until yesterday" edition! :D
		- Added Keystone Jack - Dual to allow a pair of keystone jacks side-by-side.
		- Fixed a bug where the first plate spot did not build unless one of the "full plate" options are used
		- Fixed: "Liberation Mono:Bol" -> "Liberation Mono:Bold"
		- Improved layout of code... to me, at least. :)

		v1.3
		ADDED: 3 new sizes for plate export: Standard, Junior-Jumbo, and Jumbo.

		v1.2
		ADDED: Long Toggle Switch for laird

		v1.1
		UPDATED: Screw hole locations for designer and toggle plate types.
		UPDATED: Hole size for designer plate type.
		UPDATED: Outlet hole spacing

*/

  //////////////////////////
 // Customizer Settings: //
//////////////////////////

//How big are we talkin' here?
plate_width = 1; //	[1:5]

// Bigger hole in your wall? Try this
plate_size = 0; // [0:Standard, 1:Junior-Jumbo, 2:Jumbo]

//Pick a plug or full plate type
1st_plate = "none";								// ["none":None, "blank":Blank Port, "toggle":Full Plate - Toggle Switch, "long_toggle":Full Plate - Long Toggle Switch, "outlet":Full Plate - Duplex Outlet, "rocker":Full Plate - Rocker/Designer Plate, "L5-30P", "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Pick a bottom plug type or leave as none
1st_plate_bottom_hole = "none";					// ["none":None, "blank":Blank Port, "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Add some text on the top
1st_plate_top_text = "";
//Add some text on the bottom
1st_plate_bottom_text = "";
//Pick a plug or full plate type
2nd_plate = "none";								// ["none":None, "blank":Blank Port, "toggle":Full Plate - Toggle Switch, "long_toggle":Full Plate - Long Toggle Switch, "outlet":Full Plate - Duplex Outlet, "rocker":Full Plate - Rocker/Designer Plate, "L5-30P", "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Pick a bottom plug type or leave as none
2nd_plate_bottom_hole = "none";					// ["none":None, "blank":Blank Port, "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Add some text on the top
2nd_plate_top_text = "";
//Add some text on the bottom
2nd_plate_bottom_text = "";
//Pick a plug or full plate type
3rd_plate = "none";								// ["none":None, "blank":Blank Port, "toggle":Full Plate - Toggle Switch, "long_toggle":Full Plate - Long Toggle Switch, "outlet":Full Plate - Duplex Outlet, "rocker":Full Plate - Rocker/Designer Plate, "L5-30P", "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Pick a bottom plug type or leave as none
3rd_plate_bottom_hole = "none";					// ["none":None, "blank":Blank Port, "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Add some text on the top
3rd_plate_top_text = "";
//Add some text on the bottom
3rd_plate_bottom_text = "";
//Pick a plug or full plate type
4th_plate = "none";								// ["none":None, "blank":Blank Port, "toggle":Full Plate - Toggle Switch, "long_toggle":Full Plate - Long Toggle Switch, "outlet":Full Plate - Duplex Outlet, "rocker":Full Plate - Rocker/Designer Plate, "L5-30P", "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Pick a bottom plug type or leave as none
4th_plate_bottom_hole = "none";					// ["none":None, "blank":Blank Port, "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Add some text on the top
4th_plate_top_text = "";
//Add some text on the bottom
4th_plate_bottom_text = "";
//Pick a plug or full plate type
5th_plate = "none";								// ["none":None, "blank":Blank Port, "toggle":Full Plate - Toggle Switch, "long_toggle":Full Plate - Long Toggle Switch, "outlet":Full Plate - Duplex Outlet, "rocker":Full Plate - Rocker/Designer Plate, "L5-30P", "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Pick a bottom plug type or leave as none
5th_plate_bottom_hole = "none";					// ["none":None, "blank":Blank Port, "keystone1":Keystone Jack, "keystone2":Keystone Jack - Dual, "vga":VGA Port, "hdmi":HDMI Port, "dvi":DVI-I Port, "displayport":Displayport, "cat5e":Cat5e/Cat6 Port, "usb-a":USB-A Port, "usb-b":USB-B Port, "firewire":Firewire IEEE 1394 Port, "db09":DB-09 Port, "ps2":PS2 Port, "f-type": F-Type/Coaxial Port,"svideo":S-Video Port, "stereo":Stereo Headphone Jack, "neutrik": Neutrik Cutout]
//Add some text on the top
5th_plate_top_text = "";
//Add some text on the bottom
5th_plate_bottom_text = "";

  //////////////////////
 // Static Settings: //
//////////////////////

module GoAwayCustomizer()
{
	// This module is here to stop Customizer from picking up the variables below
}

plates = [1st_plate, 2nd_plate, 3rd_plate, 4th_plate, 5th_plate];
bottom_plates = [1st_plate_bottom_hole, 2nd_plate_bottom_hole, 3rd_plate_bottom_hole, 4th_plate_bottom_hole, 5th_plate_bottom_hole];
top_texts = [1st_plate_top_text, 2nd_plate_top_text, 3rd_plate_top_text, 4th_plate_top_text, 5th_plate_top_text];
bottom_texts = [1st_plate_bottom_text, 2nd_plate_bottom_text, 3rd_plate_bottom_text, 4th_plate_bottom_text, 5th_plate_bottom_text];

l_offset = [34.925, 39.6875, 44.45];
r_offset = [34.925, 39.6875, 44.45];
spacer = [0, 0, 46.0375, 92.075, 138.1125, 184.15];
solid_plate_width = l_offset[plate_size] + spacer[plate_width] + r_offset[plate_size];

height_sizes = [114.3, 123.825, 133.35];

height = 114.3; //plate height (static)
gang_width = [0, 69.86, 115.824, 161.925, 206.375, 254]; // Plate widths (standard)

edgewidth = solid_plate_width + 10; // Bevel setting for top and bottom
rightbevel = solid_plate_width - 4; // Bevel for right side (scales)

left_offset = 34.925; // Offset first hole position
switch_offset = 46.0375; // Offset all additional holes
thinner_offset = [0, 0.92, 0.95, 0.96, 0.97, 0.973]; // Manual fix for right side wackiness

positions = [height_sizes[plate_size] / 2, height_sizes[plate_size] / 2 - 14.25, height_sizes[plate_size] / 2 + 14.25];



  ///////////////////
 // Hole Control: //
///////////////////
module plate_text(text, offset, plate_number, size = 8)
{
	translate([offset + (plate_size * 4.5), l_offset[plate_size] + (plate_number * switch_offset), 4])
	rotate([0, 0, 90])
	linear_extrude(40)
	text(text, halign = "center", size = size, font = "Liberation Mono:Bold");
}

module plate(plate = 1)
{
	plate_index = plate - 1; // indexes are zero based

	// handle all "full plate" options first...
	if (plates[plate_index] == "L5-30P")
	{
		plate_text(top_texts[plate_index], 20, plate_index);
		plate_text(bottom_texts[plate_index], 104, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) toggle_screws();
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);        
	}
	else if (plates[plate_index] == "toggle" || bottom_plates[plate_index] == "toggle")
	{
		plate_text(top_texts[plate_index], 20, plate_index);
		plate_text(bottom_texts[plate_index], 104, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) toggle_screws();
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);
	}
	else if (plates[plate_index] == "long_toggle" || bottom_plates[plate_index] == "long_toggle")
	{
		plate_text(top_texts[plate_index], 20, plate_index);
		plate_text(bottom_texts[plate_index], 104, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) toggle_screws();
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);
	}
	else if (plates[plate_index] == "rocker" || bottom_plates[plate_index] == "rocker")
	{
		plate_text(top_texts[plate_index], 21, plate_index);
		plate_text(bottom_texts[plate_index], 101, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) rocker_screws();
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);
	}
	else if (plates[plate_index] == "outlet" || bottom_plates[plate_index] == "outlet")
	{
		plate_text(top_texts[plate_index], 20, plate_index);
		plate_text(bottom_texts[plate_index], 104, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);
	}
	else if (bottom_plates[plate_index] == "none")
	{
		plate_text(top_texts[plate_index], 30, plate_index);
		plate_text(bottom_texts[plate_index], 94, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) box_screws();
		translate([positions[0], l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);
	}
	else if (plates[plate_index] == "none")
	{
		plate_text(top_texts[plate_index], 20, plate_index);
		plate_text(bottom_texts[plate_index], 104, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) box_screws();
		translate([positions[0], l_offset[plate_size] + switch_offset * plate_index, 0]) hole(bottom_plates[plate_index]);
	}
	// ...before handling the hole origins for the top/bottom combo layouts
	else
	{
		plate_text(top_texts[plate_index], 30, plate_index);
		plate_text(bottom_texts[plate_index], 94, plate_index);
		translate([0, l_offset[plate_size] + switch_offset * plate_index, 0]) box_screws();

		if (plates[plate_index] == "neutrik")
		{
			// here we modify the positions for the Neutrik holes since they need to be a litle further apart than the typical spacing allows
			translate([positions[1] - 4, l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);
			translate([positions[2] + 4, l_offset[plate_size] + switch_offset * plate_index, 0]) hole(bottom_plates[plate_index]);
		}
		else
		{
			// if it's not Neutrik, proceed as normal
			translate([positions[1], l_offset[plate_size] + switch_offset * plate_index, 0]) hole(plates[plate_index]);
			translate([positions[2], l_offset[plate_size] + switch_offset * plate_index, 0]) hole(bottom_plates[plate_index]);
		}
	}
}


  /////////////////
 // SolidWorks: //
/////////////////
module plate_solid(plate = 1)
{
    plate_index = plate - 1; // indexes are zero based

    echo("plate number: ", plate, "plate multiplier: ", plate_index, "plate index: ", plate_index);

	if (plates[plate_index] == "keystone1" && bottom_plates[plate_index] == "none")
	{
		translate([height_sizes[plate_size] / 2 + 14.3, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone_solid");
	}
	else if (plates[plate_index] == "keystone1" && bottom_plates[plate_index] != "outlet" && bottom_plates[plate_index] != "toggle" && bottom_plates[plate_index] != "rocker")
	{
		translate([height_sizes[plate_size] / 2, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone_solid");
	}

	if (bottom_plates[plate_index] == "keystone1" && plates[plate_index] == "none")
	{
		translate([height_sizes[plate_size] / 2 + 14.3, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone_solid");
	}
	else if (bottom_plates[plate_index] == "keystone1" && plates[plate_index] != "outlet" && plates[plate_index] != "toggle" && plates[plate_index] != "rocker")
	{
		translate([height_sizes[plate_size]/2 + 28.5, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone_solid");
	}


	if (plates[plate_index] == "keystone2" && bottom_plates[plate_index] == "none")
	{
		translate([height_sizes[plate_size] / 2 + 14.3, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone2_solid");
	}
	else if (plates[plate_index] == "keystone2" && bottom_plates[plate_index] != "outlet" && bottom_plates[plate_index] != "toggle" && bottom_plates[plate_index] != "rocker")
	{
		translate([height_sizes[plate_size] / 2, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone2_solid");
	}

	if (bottom_plates[plate_index] == "keystone2" && plates[plate_index] == "none")
	{
		translate([height_sizes[plate_size] / 2 + 14.3, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone2_solid");
	}
	else if (bottom_plates[plate_index] == "keystone2" && plates[plate_index] != "outlet" && plates[plate_index] != "toggle" && plates[plate_index] != "rocker")
	{
		translate([height_sizes[plate_size]/2 + 28.5, l_offset[plate_size] - 11.5 + switch_offset * plate_index, -3.9]) hole("keystone2_solid");
	}

}

  ///////////////////
 // PlateStation: //
///////////////////

//Plate size and bevel
module base_plate()
{
	difference()
	{
		cube([height_sizes[plate_size],solid_plate_width,6]);
		translate([-4.3, -5, 6.2]) rotate([0, 45, 0]) cube([6, edgewidth, 6]); //Top Bevel
		translate([height_sizes[plate_size] - 4.2, -5, 6.25]) rotate([0, 45, 0]) cube([6, edgewidth, 6]); //Bottom Bevel
		translate([height_sizes[plate_size] + 10, -4.4, 6.1]) rotate([0, 45, 90]) cube([6, height_sizes[plate_size] + 20, 6]); //Left Bevel (doesn't change)
		translate([height_sizes[plate_size] + 10, rightbevel, 6]) rotate([0, 45, 90]) cube([6, height_sizes[plate_size] + 10, 6]); //Right Bevel (scales right)
	}
}


// Thinning Plate
module plate_inner()
{
	scale([0.95,thinner_offset[plate_width],1])
	{
		translate([3,3,0])
		{
			difference()
			{
				cube([height_sizes[plate_size], solid_plate_width, 6]);
				translate([-4.3, -5, 6.2]) rotate([0, 45, 0]) cube([6, edgewidth, 6]); //Top Bevel
				translate([height_sizes[plate_size] - 4.2, -5, 6.25]) rotate([0, 45, 0]) cube([6, edgewidth, 6]); //Bottom Bevel
				translate([height_sizes[plate_size] + 10, -4.4, 6.1]) rotate([0, 45, 90]) cube([6, height_sizes[plate_size] + 20, 6]); //Left Bevel (doesn't change)
				translate([height_sizes[plate_size] + 10, rightbevel, 6]) rotate([0, 45, 90]) cube([6, height_sizes[plate_size] + 10, 6]); //Right Bevel (scales right)
			}
		}
	}
}

// Box screw holes
module box_screws()
{
	translate([height_sizes[plate_size] / 2 + 41.67125, 0, -1]) cylinder(r = 2, h = 10, $fn = 12);
	translate([height_sizes[plate_size] / 2 + 41.67125, 0, 3.5]) cylinder(r1 = 2, r2 = 3.3, h = 3);
	translate([height_sizes[plate_size] / 2 - 41.67125, 0, -1]) cylinder(r = 2, h = 10, $fn = 12);
	translate([height_sizes[plate_size] / 2 - 41.67125, 0, 3.5]) cylinder(r1 = 2, r2 = 3.3, h = 3);
	}

// Rocker/Designer screw holes
module rocker_screws()
{
	translate([height_sizes[plate_size] / 2 + 48.41875, 0, -1]) cylinder(r = 2, h = 10, $fn = 12);
	translate([height_sizes[plate_size] / 2 + 48.41875, 0, 3.5]) cylinder(r1 = 2, r2 = 3.3, h = 3);
	translate([height_sizes[plate_size] / 2 - 48.41875, 0, -1]) cylinder(r = 2, h = 10, $fn = 12);
	translate([height_sizes[plate_size] / 2 - 48.41875, 0, 3.5]) cylinder(r1 = 2, r2 = 3.3, h = 3);
}

// Toggle screw holes
module toggle_screws()
{
	translate([height_sizes[plate_size] / 2 + 30.1625, 0, -1]) cylinder(r = 2, h = 10, $fn = 12);
	translate([height_sizes[plate_size] / 2 + 30.1625, 0, 3.5]) cylinder(r1 = 2, r2 = 3.3, h = 3);
	translate([height_sizes[plate_size] / 2 - 30.1625, 0, -1]) cylinder(r = 2, h = 10, $fn = 12);
	translate([height_sizes[plate_size] / 2 - 30.1625, 0, 3.5]) cylinder(r1 = 2, r2 = 3.3, h = 3);
}

  ///////////////
 // Portland: //
///////////////

// Hole Cutout definitions
module hole(hole_type)
{
	// Blank plate
	if (hole_type == "blank") {}

	// L5-30P outlet hole
    if (hole_type == "L5-30P")
    {
		translate([height_sizes[plate_size] / 2, 0, 0]) cylinder(d = 35.5, h = 500, center = true);
    }


	// Toggle switch hole
	if (hole_type == "toggle")
	{
		translate([height_sizes[plate_size] / 2, 0, 0]) cube([23.8125, 10.3188, 15], center = true);
	}

	// Toggle switch hole and screw holes
	if (hole_type == "long_toggle")
	{
		translate([height_sizes[plate_size] / 2, 0, 0]) cube([43.6563, 11.9063, 15], center = true);
	}

	// Rocker switch plate
	if (hole_type == "rocker")
	{
		translate([height_sizes[plate_size] / 2, 0, 0]) cube([67.1, 33.3, 15], center = true);
	}

	// Duplex power outlet plate or dual side toggles
	if (hole_type == "outlet" || hole_type == "dualsidetoggle")
	{
		translate([height_sizes[plate_size] / 2 + 19.3915, 0, 0])
		{
			difference()
			{
				cylinder(r = 17.4625, h = 15, center = true);
				translate([-24.2875, -15, -2]) cube([10, 37, 15], center = false);
				translate([14.2875, -15, -2]) cube([10, 37, 15], center = false);
			}
		}

		translate([height_sizes[plate_size]/2 - 19.3915,0,0])
		{
			difference()
			{
				cylinder(r = 17.4625, h = 15, center = true);
				translate([-24.2875, -15, -2]) cube([10, 37, 15], center = false);
				translate([14.2875, -15, -2]) cube([10, 37, 15], center = false);
			}
		}

		translate([height_sizes[plate_size] / 2, 0, -1]) cylinder(r = 2, h = 10);
		translate([height_sizes[plate_size] / 2, 0, 3.5]) cylinder(r1 = 2, r2 = 3.3, h = 3);
	}

	// VGA & DB09 plate
	// VGA Fits http://www.datapro.net/products/vga-dual-panel-mount-f-f-cable.html
	// DB09 Fits http://www.datapro.net/products/db9-serial-panel-mount-male-extension.html
	if (hole_type == "vga" || hole_type == "db09")
	{
		translate([0, -12.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 12.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		difference()
		{
			cube([10, 19, 13], center = true);
			translate([-5, -9.2, 1]) rotate([0, 0, -35.6]) cube([4.4, 2.4, 15], center = true);
			translate([.9, -11.2, 0]) rotate([0, 0, 9.6]) cube([10, 4.8, 15], center = true);
			translate([4.6, -8.5, 0]) rotate([0, 0, 37.2]) cube([4.4, 2.4, 15], center = true);
			translate([-5, 9.2, 1]) rotate([0, 0, 35.6]) cube([4.4, 2.4, 15], center = true);
			translate([0.9, 11.2, 0]) rotate([0, 0, -9.6]) cube([10, 4.8, 15], center = true);
			translate([4.6, 8.5, 0]) rotate([0, 0, -37.2]) cube([4.4, 2.4, 15], center = true);
		}
	}

	// HDMI plate
	// Fits http://www.datapro.net/products/hdmi-panel-mount-extension-cable.html
	if (hole_type == "hdmi")
	{
		translate([0, -13, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 13, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 3]) cube([6, 16, 10], center = true);
	}

	// DVI-I plate
	// Fits http://www.datapro.net/products/dvi-i-panel-mount-extension-cable.html
	if (hole_type == "dvi")
	{
		translate([0, -16, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 16, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 3]) cube([10, 26, 10], center = true);
	}

	// DisplayPort plate
	// Fits http://www.datapro.net/products/dvi-i-panel-mount-extension-cable.html
	if (hole_type == "displayport")
	{
		translate([0, -13.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 13.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 0])
		{
			difference()
			{
				translate([0, 0, 3]) cube([7, 19, 10], center = true);
				translate([2.47, -9.37, 3]) rotate([0, 0, -54.6]) cube([3, 5, 14], center = true);
			}
		}
	}

	// USB-A Plate
	// Fits http://www.datapro.net/products/usb-panel-mount-type-a-cable.html
	if (hole_type == "usb-a")
	{
		translate([0, -15, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 15, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 3]) cube([8, 16, 10], center = true);
	}

	// USB-B Plate
	// Fits http://www.datapro.net/products/usb-panel-mount-type-b-cable.html
	if (hole_type == "usb-b")
	{
		translate([0, -13, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 13, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 3]) cube([11, 12, 10], center = true);
	}

	// 1394 Firewire Plate
	// Fits http://www.datapro.net/products/firewire-panel-mount-extension.html
	if (hole_type == "firewire")
	{
		translate([0, -13.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 13.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 3]) cube([7, 12, 10], center = true);
	}

	// F-Type / Cable TV Plate
	// Fits http://www.datapro.net/products/f-type-panel-mounting-coupler.html
	if (hole_type == "f-type")
	{
		translate([0, 0, 3]) cylinder(r = 4.7625, h = 10, center = true);
	}

	// Cat5e & Gat6 plate
	// Cat5e Fits http://www.datapro.net/products/cat-5e-panel-mount-ethernet.html
	// Cat6 Fits hhttp://www.datapro.net/products/cat-6-panel-mount-ethernet.html
	if (hole_type == "cat5e" || hole_type == "cat6")
	{
		translate([0, -12.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 12.5, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 3]) cube([15, 15, 10], center = true);
	}

	// S-Video & PS2 plate
	// S-Video Fits hhttp://www.datapro.net/products/cat-6-panel-mount-ethernet.html
	// PS2 http://www.datapro.net/products/ps2-panel-mount-extension-cable.html
	if (hole_type == "svideo" || hole_type == "ps2")
	{
		translate([0, -10, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 10, 3]) cylinder(r = 1.75, h = 10, center = true);
		translate([0, 0, 3]) cylinder(r = 5, h = 10, center = true);
	}


	// Stereo / 1/4" headphone jack coupler
	// Stereo coupler Fits http://www.datapro.net/products/stereo-panel-mount-coupler.html
	if (hole_type == "stereo")
	{
		cylinder(r = 2.985, h = 15, center = true);
	}

	// Neutrik cutout
	// https://www.datapro.net/drawings/cutouts/neutrik_cutout.pdf
	if (hole_type == "neutrik")
	{
		cylinder(d = 24, h = 15, center = true);
		translate([-12, -9.5, 0]) cylinder(d = 3.2, h = 15, $fn = 16);
		translate([12, 9.5, 0]) cylinder(d = 3.2, h = 15, $fn = 16);
	}

	//Keystone1 hole
	//Hole for 1 Keystone Jack
	if (hole_type == "keystone1")
	{
		translate([0, 0, 5]) cube([16.5, 15, 10], center = true);
	}

	//Keystone2 hole
	//Hole for 1 Keystone Jack - Dual
	if (hole_type == "keystone2")
	{
		translate([0, -13, 0])
		{
			translate([-8.25, -7, 2]) cube([16.5, 15, 10]);
		}

		translate([0, 12, 0])
		{
			translate([-8.25, -7, 2]) cube([16.5, 15, 10]);
		}
	}

	// Keystone Solids
	if (hole_type == "keystone_solid")
	{
		rotate([0, 0, 90])
		{
			difference()
			{
				translate([0, 0, .1]) cube([23, 30.5, 9.8]);
				translate([4, 4, 0])
				{
					difference()
					{
						cube([15, 22.5, 10]);
						translate([-1, -0.001, 3.501]) cube([17, 2, 6.5]);
						translate([-1, 2.5, -3.40970]) rotate([45, 0, 0]) cube([17, 2, 6.5]);
						translate([-1, 18.501, 6.001]) cube([17, 4, 4]);
				}
						translate([-1, 20.5, 0]) rotate([-45, 0, 0]) cube([17, 2, 6.5]);
					}
			}
		}
	}

	if (hole_type == "keystone2_solid")
	{
		translate([0, 12.5, 0])
		{
			rotate([0, 0, 90])
			{
				difference()
				{
					translate([0, 0, .1]) cube([23, 30.5, 9.8]);
					translate([4, 4, 0])
					{
						difference()
						{
							cube([15, 22.5, 10]);
							translate([-1, -0.001, 3.501]) cube([17, 2, 6.5]);
							translate([-1, 2.5, -3.40970]) rotate([45, 0, 0]) cube([17, 2, 6.5]);
							translate([-1, 18.501, 6.001]) cube([17, 4, 4]);
							translate([-1, 20.5, 0]) rotate([-45, 0, 0]) cube([17, 2, 6.5]);
						}
					}
				}
			}
		}

		translate([0, -12.5, 0])
		{
			rotate([0, 0, 90])
			{
				difference()
				{
					translate([0, 0, .1]) cube([23, 30.5, 9.8]);
					translate([4, 4, 0])
					{
						difference()
						{
							cube([15, 22.5, 10]);
							translate([-1, -0.001, 3.501]) cube([17, 2, 6.5]);
							translate([-1, 2.5, -3.40970]) rotate([45, 0, 0]) cube([17, 2, 6.5]);
							translate([-1, 18.501, 6.001]) cube([17, 4, 4]);
							translate([-1, 20.5, 0]) rotate([-45, 0, 0]) cube([17, 2, 6.5]);
						}
					}
				}
			}
		}
	}
}

  ////////////////////////
 // Number One ENGAGE: //
////////////////////////

// Rotate so it sits correctly on plate (whoops) and make right side up to ensure a smoother face (if you use monotonic ironing, anyway)
rotate([0, 0, -90])
{
    // put plate at 0,0,0 for easier printing
    translate([-height_sizes[plate_size] / 2, -solid_plate_width / 2, -6])
    {
        difference()
        {
            base_plate();
            translate([0, 0, -3]) plate_inner();
            
            for (w = [0:plate_width])
            {
                plate(w);
            }
        }
        union()
        {
            for (w = [0:plate_width])
            {
                plate_solid(w);
            }    
        }
    }
}
