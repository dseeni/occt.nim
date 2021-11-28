##  Created on: 1992-08-26
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
type
  GceMakeRotation* {.importcpp: "gce_MakeRotation", header: "gce_MakeRotation.hxx",
                    bycopy.} = object ## ! Constructs a rotation through angle Angle about the axis defined by the line Line.


proc newGceMakeRotation*(line: Lin; angle: cfloat): GceMakeRotation {.cdecl,
    constructor, importcpp: "gce_MakeRotation(@)", dynlib: tkgeombase.}
proc newGceMakeRotation*(axis: Ax1; angle: cfloat): GceMakeRotation {.cdecl,
    constructor, importcpp: "gce_MakeRotation(@)", dynlib: tkgeombase.}
proc newGceMakeRotation*(point: Pnt; direc: Dir; angle: cfloat): GceMakeRotation {.
    cdecl, constructor, importcpp: "gce_MakeRotation(@)", dynlib: tkgeombase.}
proc value*(this: GceMakeRotation): Trsf {.noSideEffect, cdecl, importcpp: "Value",
                                       dynlib: tkgeombase.}
proc operator*(this: GceMakeRotation): Trsf {.noSideEffect, cdecl,
    importcpp: "Operator", dynlib: tkgeombase.}
converter `trsf`*(this: GceMakeRotation): Trsf {.noSideEffect, cdecl,
    importcpp: "gce_MakeRotation::operator gp_Trsf", dynlib: tkgeombase.}