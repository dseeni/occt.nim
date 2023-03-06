import gp_types
import ../standard/standard_types
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"

proc ax1*(): Ax1Obj {.cdecl, constructor, importcpp: "gp_Ax1(@)", header: "gp_Ax1.hxx".}
proc ax1*(p: gp_Pnt; v: DirObj): Ax1Obj {.cdecl, constructor, importcpp: "gp_Ax1(@)",
                              header: "gp_Ax1.hxx".}
proc setDirection*(this: var Ax1Obj; v: DirObj) {.cdecl, importcpp: "SetDirection",
                                      header: "gp_Ax1.hxx".}
proc setLocation*(this: var Ax1Obj; p: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                     header: "gp_Ax1.hxx".}
proc direction*(this: Ax1Obj): DirObj {.noSideEffect, cdecl, importcpp: "Direction",
                              header: "gp_Ax1.hxx".}
proc location*(this: Ax1Obj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Ax1.hxx".}
proc isCoaxial*(this: Ax1Obj; other: Ax1Obj; angularTolerance: cfloat;
               linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoaxial", header: "gp_Ax1.hxx".}
proc isNormal*(this: Ax1Obj; other: Ax1Obj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Ax1.hxx".}
proc isOpposite*(this: Ax1Obj; other: Ax1Obj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsOpposite", header: "gp_Ax1.hxx".}
proc isParallel*(this: Ax1Obj; other: Ax1Obj; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsParallel", header: "gp_Ax1.hxx".}
proc angle*(this: Ax1Obj; other: Ax1Obj): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       header: "gp_Ax1.hxx".}
proc reverse*(this: var Ax1Obj) {.cdecl, importcpp: "Reverse", header: "gp_Ax1.hxx".}
proc reversed*(this: Ax1Obj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Reversed",
                             header: "gp_Ax1.hxx".}
proc mirror*(this: var Ax1Obj; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: Ax1Obj; p: gp_Pnt): Ax1Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Ax1.hxx".}
proc mirror*(this: var Ax1Obj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: Ax1Obj; a1: Ax1Obj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax1.hxx".}
proc mirror*(this: var Ax1Obj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: Ax1Obj; a2: Ax2Obj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Ax1.hxx".}
proc rotate*(this: var Ax1Obj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax1.hxx".}
proc rotated*(this: Ax1Obj; a1: Ax1Obj; ang: cfloat): Ax1Obj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax1.hxx".}
proc scale*(this: var Ax1Obj; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Ax1.hxx".}
proc scaled*(this: Ax1Obj; p: gp_Pnt; s: cfloat): Ax1Obj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax1.hxx".}
proc transform*(this: var Ax1Obj; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Ax1.hxx".}
proc transformed*(this: Ax1Obj; t: gp_Trsf): Ax1Obj {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Ax1.hxx".}
proc translate*(this: var Ax1Obj; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Ax1.hxx".}
proc translated*(this: Ax1Obj; v: gp_Vec): Ax1Obj {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Ax1.hxx".}
proc translate*(this: var Ax1Obj; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Ax1.hxx".}
proc translated*(this: Ax1Obj; p1: gp_Pnt; p2: gp_Pnt): Ax1Obj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax1.hxx".}
proc dumpJson*(this: Ax1Obj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax1.hxx".}
proc initFromJson*(this: var Ax1Obj; theSStream: StandardSStream; theStreamPos: var cint): bool {.
    cdecl, importcpp: "InitFromJson", header: "gp_Ax1.hxx".}
