# PinePhone Development Stand
This project provides a 3D printable stand for the PinePhone.  The stand is designed with development and testing in mind - it is therefore strong and doesn't tip over when the phone's touch screen is used (unlike stands designed for charging only).  The stand also features side supports to prevent the phone from tipping when the power button is used and holes in the lower-back of the bracket for the speakers.  The base of the phone is raised around 6cm off the desk to ensure that all types of USB-C cables and connectors can fit easily without stressing the socket or cable.

Note: This project is GPLv3 open-source. The github repository for the model (containing the complete OpenSCAD project) can be found at https://github.com/simoninns/PinePhone-Dev-Stand

<img src="/images/renders/complete_with_phone.png" width="800">

# Overview

The case is designed in two parts (the stand and the bracket) which slot together.  This also allows a simple two colour print if desired (or both parts can be printed at the same time).

The project also includes a simple model of the PinePhone to assist with modelling and adjustments.

# Assembly instructions

Print both parts of the stand.  Run a small amount of super-glue into both recesses on the back of the phone bracket.  The press this into the stand (ensuring that the bracket and stand are the right way up).  Use a little pressure to hold in place for 30 seconds or until the glue is correctly set.

<img src="/images/renders/complete.png" width="800">

# Printing instructions

## Overview

The model has been printed and tested on the Prusa MK3S/MMU2S printer using PETG filament. All parts fit on a 20x20 printing bed.

The OpenSCAD source files provide a parameter interface that allows you to render either the whole model or the individual parts (ready for STL (or other 3D format) export).  This requires OpenSCAD 2019.05 or later.

## Recommended print settings
### Stand
* Number required: 1
* Material: Prusament PETG (Prusa Jet Black)
* Layer: 0.20mm (Quality)
* Infill: 15%
* Supports: None
* Print time (approximate): Xh XXm

<img src="/images/renders/base.png" width="800">

### Phone bracket
* Number required: 1
* Material: Prusament PETG (Prusa Orange)
* Layer: 0.20mm (Quality)
* Infill: 15%
* Supports: None
* Print time (approximate): Xh XXm

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
