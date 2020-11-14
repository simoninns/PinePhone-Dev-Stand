/************************************************************************

	main.scad
    
    PinePhone Dev Stand
    Copyright (C) 2020 Simon Inns
    
    This is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
	
    Email: simon.inns@gmail.com
    
************************************************************************/

include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>

// Rendering quality
$fn=50;

// Display assembled or ready for printing:
display_assembled = "Assembled"; // [Assembled, Printing]
display_base = "Yes"; // [Yes, No]
display_bracket = "Yes"; // [Yes, No]
display_phone = "Yes"; // [Yes, No]

// Render a mock up of the PinePhone
// Note: Front bezel shape is approximate at best
module phone()
{
    // Dimensions: 160.5 x 76.6 x 9.2 mm
    color("DimGray") difference() {
        // Phone body is 160.5 x 76.6 x 9.2 mm with 2.5mm radius edges
        cuboid([76.6,160.5,10], fillet=5);
        move([0,0,5.5 - 0.8]) cuboid([76.6,160.5,1]);

        // USB-C port is 9mm x 2.5mm - top of port is 4.5mm back from front of phone
        move([0,-80,3.25 - 4.5]) rotate([90,0,0]) cuboid([9, 2.5, 10], fillet=1, edges=EDGES_Z_ALL);

        // Screen is 68mm x 135mm - make cut-out
        move([0,0,3.7]) cuboid([68, 135, 2]);

        // Speaker is 11mm from base - make cut-out
        move([0, -67, -5]) cuboid([45, 4.5, 2]);
    }

    // Screen is 68mm x 135mm
    color("Black") move([0,0,3.7]) cuboid([68, 135, 1]);

    // Speaker is 11mm from base - make cut-out
    color("Black") move([0, -67, -4.5]) cuboid([45, 4.5, 1]);

    // Missing buttons
    // Missing camera
    // Missing headphone jack
}

// Render the phone bracket
module phoneBracket()
{
    difference() {
        move([0,-44,0]) cuboid([77 + 8,161 / 2,10 + 8], chamfer=2.5, edges=EDGES_Z_ALL+EDGES_TOP);

        cuboid([78,161,10]);
        move([0,-14,4]) cuboid([77 + 10,161 / 2,10 + 8]);
        move([0,-34,10]) cuboid([77 - 6,161 / 2,10 + 8], chamfer=2.5, edges=EDGES_Z_ALL);

        // USB-C cut out
        move([0,-80,-1]) cuboid([20,20,8], chamfer=1, edges=EDGES_Y_ALL);

        // Speaker cut out 45 + 2
        move([(45 / 3) + 2 ,-67, -7]) cuboid([45 / 3, 4.5 + 2, 10],  chamfer=1, edges=EDGES_Z_ALL);
        move([0,-67, -7]) cuboid([45 / 3, 4.5 + 2, 10],  chamfer=1, edges=EDGES_Z_ALL);
        move([-((45 / 3) + 2),-67, -7]) cuboid([45 / 3, 4.5 + 2, 10],  chamfer=1, edges=EDGES_Z_ALL);

        // Right joiner
        move([32,0,0]) {
            joiner(false);
        }

        // Left joiner
        move([-32,0,0]) {
            joiner(false);
        }
    }

    // Add some side stays to stop the phone rocking when the power button is pressed
    move([40.75,-35,-3.5]) cuboid([3.5,45,3], chamfer=1, edges=EDGES_TOP);
    move([-40.75,-35,-3.5]) cuboid([3.5,45,3], chamfer=1, edges=EDGES_TOP);
}

// Render a side of the stand
module standSide()
{
    difference() {
        move([0,-44,-84]) cuboid([4,80.5,150], chamfer=1, edges=EDGES_Z_ALL);
        rotate([90 - 50,0,0]) move([0,-20,-100]) cuboid([6,200,90]);
        rotate([90 - 50,0,0]) move([0, -154, 0]) cuboid([6,80,300]);
    }
}

// Joiners to align join between base and phone bracket
module joiner(direc)
{
    // Positive = true - Negative = false
    // Note: Negative is slighly larger to ensure easy fit
    move([0,-44,-7.5 - (1.5 / 2)]) {
        if (direc) cuboid([1,70,1.5], fillet=0.5, edges=EDGES_Z_ALL);
        if (!direc) cuboid([1.2,70,1.7], fillet=0.5, edges=EDGES_Z_ALL);
    }
}

// Render the base of the stand
module standBase()
{
    rotate([90 - 50,0,0]) move([0, -113 + 2, -10]) {
        difference() {
            cuboid([80,8,130], chamfer=2, edges=EDGES_Y_ALL+EDGES_BACK);

            // Recess for 3M feet
            rotate([90,0,0]) {
                // Centre feet
                move([30,0,5]) cyl(h=4, d=14);
                move([-30,0,5]) cyl(h=4, d=14);

                // Back feet
                move([30,-55,5]) cyl(h=4, d=14);
                move([-30,-55,5]) cyl(h=4, d=14);

                // Front feet
                move([30, 55,5]) cyl(h=4, d=14);
                move([-30, 55,5]) cyl(h=4, d=14);
            }
        }
    }

}

// Render the stand
module stand()
{
    // Right
    move([32,0,0]) {
        standSide();
        joiner(true);
    }

    // Left
    move([-32,0,0]) {
        standSide();
        joiner(true);
    }

    standBase();
}

// Render the complete model
module main()
{
    if (display_assembled == "Assembled") {
        move([0,0,55 + 60]) rotate([50,0,0]) {
            if (display_phone == "Yes") phone();
            if (display_bracket == "Yes") color("Orange") phoneBracket();
            if (display_base == "Yes") color("DimGray") stand();
        }
    }

    if (display_assembled == "Printing") {
        if (display_bracket == "Yes") {
            color("Orange") {
                rotate([90,0,0]) move([0,84.25,0]) phoneBracket();
            }
        }
        if (display_base == "Yes") {
            color("DimGray") {
                move([0,0,55 + 60]) rotate([50,0,0]) stand();
            }
        }
    }
}

main();