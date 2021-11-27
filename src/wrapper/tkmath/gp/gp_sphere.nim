##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Sphere* {.importcpp: "gp_Sphere", header: "gp_Sphere.hxx", bycopy.} = object ## ! Creates an
                                                                       ## indefinite sphere.


proc newSphere*(): Sphere {.cdecl, constructor, importcpp: "gp_Sphere(@)",
                         header: "gp_Sphere.hxx".}
proc newSphere*(a3: Ax3; radius: cfloat): Sphere {.cdecl, constructor,
    importcpp: "gp_Sphere(@)", header: "gp_Sphere.hxx".}
proc setLocation*(this: var Sphere; loc: Pnt) {.cdecl, importcpp: "SetLocation",
    header: "gp_Sphere.hxx".}
proc setPosition*(this: var Sphere; a3: Ax3) {.cdecl, importcpp: "SetPosition",
    header: "gp_Sphere.hxx".}
proc setRadius*(this: var Sphere; r: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "gp_Sphere.hxx".}
proc area*(this: Sphere): cfloat {.noSideEffect, cdecl, importcpp: "Area",
                               header: "gp_Sphere.hxx".}
proc coefficients*(this: Sphere; a1: var cfloat; a2: var cfloat; a3: var cfloat;
                  b1: var cfloat; b2: var cfloat; b3: var cfloat; c1: var cfloat;
                  c2: var cfloat; c3: var cfloat; d: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Sphere.hxx".}
proc uReverse*(this: var Sphere) {.cdecl, importcpp: "UReverse", header: "gp_Sphere.hxx".}
proc vReverse*(this: var Sphere) {.cdecl, importcpp: "VReverse", header: "gp_Sphere.hxx".}
proc direct*(this: Sphere): bool {.noSideEffect, cdecl, importcpp: "Direct",
                               header: "gp_Sphere.hxx".}
proc location*(this: Sphere): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                                header: "gp_Sphere.hxx".}
proc position*(this: Sphere): Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                                header: "gp_Sphere.hxx".}
proc radius*(this: Sphere): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                 header: "gp_Sphere.hxx".}
proc volume*(this: Sphere): cfloat {.noSideEffect, cdecl, importcpp: "Volume",
                                 header: "gp_Sphere.hxx".}
proc xAxis*(this: Sphere): Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Sphere.hxx".}
proc yAxis*(this: Sphere): Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Sphere.hxx".}
proc mirror*(this: var Sphere; p: Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: Sphere; p: Pnt): Sphere {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Sphere.hxx".}
proc mirror*(this: var Sphere; a1: Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: Sphere; a1: Ax1): Sphere {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Sphere.hxx".}
proc mirror*(this: var Sphere; a2: Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Sphere.hxx".}
proc mirrored*(this: Sphere; a2: Ax2): Sphere {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Sphere.hxx".}
proc rotate*(this: var Sphere; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Sphere.hxx".}
proc rotated*(this: Sphere; a1: Ax1; ang: cfloat): Sphere {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Sphere.hxx".}
proc scale*(this: var Sphere; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Sphere.hxx".}
proc scaled*(this: Sphere; p: Pnt; s: cfloat): Sphere {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Sphere.hxx".}
proc transform*(this: var Sphere; t: Trsf) {.cdecl, importcpp: "Transform",
                                       header: "gp_Sphere.hxx".}
proc transformed*(this: Sphere; t: Trsf): Sphere {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Sphere.hxx".}
proc translate*(this: var Sphere; v: Vec) {.cdecl, importcpp: "Translate", header: "gp_Sphere.hxx".}
proc translated*(this: Sphere; v: Vec): Sphere {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Sphere.hxx".}
proc translate*(this: var Sphere; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Sphere.hxx".}
proc translated*(this: Sphere; p1: Pnt; p2: Pnt): Sphere {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Sphere.hxx".}