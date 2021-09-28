##  Created on: 1993-04-13
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Quaternion"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Cone"
discard "forward decl of gp_XY"
discard "forward decl of gp_Mat2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
type
  Gp* {.importcpp: "gp", header: "gp.hxx", bycopy.} = object


proc `new`*(this: var Gp; theSize: csize_t): pointer {.importcpp: "gp::operator new",
    header: "gp.hxx".}
proc `delete`*(this: var Gp; theAddress: pointer) {.importcpp: "gp::operator delete",
    header: "gp.hxx".}
proc `new[]`*(this: var Gp; theSize: csize_t): pointer {.
    importcpp: "gp::operator new[]", header: "gp.hxx".}
proc `delete[]`*(this: var Gp; theAddress: pointer) {.
    importcpp: "gp::operator delete[]", header: "gp.hxx".}
proc `new`*(this: var Gp; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp::operator new", header: "gp.hxx".}
proc `delete`*(this: var Gp; a2: pointer; a3: pointer) {.
    importcpp: "gp::operator delete", header: "gp.hxx".}
proc resolution*(): StandardReal {.importcpp: "gp::Resolution(@)", header: "gp.hxx".}
proc origin*(): Pnt {.importcpp: "gp::Origin(@)", header: "gp.hxx".}
proc dx*(): Dir {.importcpp: "gp::DX(@)", header: "gp.hxx".}
proc dy*(): Dir {.importcpp: "gp::DY(@)", header: "gp.hxx".}
proc dz*(): Dir {.importcpp: "gp::DZ(@)", header: "gp.hxx".}
proc ox*(): Ax1 {.importcpp: "gp::OX(@)", header: "gp.hxx".}
proc oy*(): Ax1 {.importcpp: "gp::OY(@)", header: "gp.hxx".}
proc oz*(): Ax1 {.importcpp: "gp::OZ(@)", header: "gp.hxx".}
proc xoy*(): Ax2 {.importcpp: "gp::XOY(@)", header: "gp.hxx".}
proc zox*(): Ax2 {.importcpp: "gp::ZOX(@)", header: "gp.hxx".}
proc yoz*(): Ax2 {.importcpp: "gp::YOZ(@)", header: "gp.hxx".}
proc origin2d*(): Pnt2d {.importcpp: "gp::Origin2d(@)", header: "gp.hxx".}
proc dX2d*(): Dir2d {.importcpp: "gp::DX2d(@)", header: "gp.hxx".}
proc dY2d*(): Dir2d {.importcpp: "gp::DY2d(@)", header: "gp.hxx".}
proc oX2d*(): Ax2d {.importcpp: "gp::OX2d(@)", header: "gp.hxx".}
proc oY2d*(): Ax2d {.importcpp: "gp::OY2d(@)", header: "gp.hxx".}