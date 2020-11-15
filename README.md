# PinePhone Development Stand
The PinePhone development stand is specifically designed for the PinePhone with software development and testing in mind.  The phone is held securely at a comfortable angle (for viewing and use of the touch screen) and will not tip over if the phone is used at the bottom or top of the screen.  In addition, the bracket has side supports to prevent the phone falling sideways when the power or volume buttons are used.  The lower edge of the phone is raised around 6cm by the stand to ensure that all types of USB-C cables and connectors can fit easily without stressing the socket or cable.  The base of the stand has indented guides for stick-on rubber feet (such as 3M Bumpon feet) which can be used to prevent the stand from sliding on the desk when pressing on the touch screen.

Note: This project is GPLv3 open-source. The github repository for the model (containing the complete OpenSCAD project) can be found at https://github.com/simoninns/PinePhone-Dev-Stand

<img src="/images/photos/PinePhone_Stand_1_s.jpg" width="800">

# Overview

The case is designed in two parts (the stand and the bracket) which slot together.  This also allows a simple two colour print if desired (or both parts can be printed at the same time).

The project also includes a simple model of the PinePhone to assist with modelling and adjustments.

# Assembly instructions

Print both parts of the stand.  Run a small amount of super-glue into both recesses on the back of the phone bracket.  The press this into the stand (ensuring that the bracket and stand are the right way up).  Use a little pressure to hold in place for 30 seconds or until the glue is correctly set.

<img src="/images/photos/PinePhone_Stand_2_s.jpg" width="800">

Guides are provided on the unside of the base for 13-14mm rubber feet (use 3M bumpon or similar).  Either 4 or 6 feet can be used depending on the desired level of stability.

# Printing instructions

## Overview

The model has been printed and tested on the Prusa MK3S/MMU2S printer using PETG filament. All parts fit on a 20x20 printing bed.

The OpenSCAD source files provide a parameter interface that allows you to render either the whole model or the individual parts (ready for STL (or other 3D format) export).  This requires OpenSCAD 2019.05 or later.

The base can be printed as-is on the print bed as the side parts do not need any support.  Print the bracket with the USB-C hole on the print bed.  No support is necessary for the bracket either.  All edges are angled (rather than rounded) to ensure simple slicing and printing of the shapes.

## Recommended print settings
### Stand
* Number required: 1
* Material: Prusament PETG (Prusa Jet Black)
* Layer: 0.20mm (Quality)
* Infill: 15%
* Supports: None
* Print time (approximate): 6h 41m

<img src="/images/renders/base.png" width="800">

### Phone bracket
* Number required: 1
* Material: Prusament PETG (Prusa Orange)
* Layer: 0.20mm (Quality)
* Infill: 15%
* Supports: None
* Print time (approximate): 3h 26m

<img src="/images/renders/phone_bracket.png" width="800">

# Author

The PinePhone development stand is designed and maintained by Simon Inns.

# Licensing

## OpenSCAD source files - software license (GPLv3)

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

## 3D model files - Creative Commons license (Creative Commons BY-SA 4.0)

Please see the following link for details: https://creativecommons.org/licenses/by-sa/4.0/

You are free to:

Share - copy and redistribute the material in any medium or format
Adapt - remix, transform, and build upon the material
for any purpose, even commercially.

This license is acceptable for Free Cultural Works.

The licensor cannot revoke these freedoms as long as you follow the license terms.

Under the following terms:

Attribution - You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

ShareAlike - If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.

No additional restrictions - You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.
