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
type
  Ax1* {.importcpp: "gp_Ax1", header: "gp_Ax1.hxx", bycopy.} = object ## ! Creates an axis object representing Z axis of
                                                              ## ! the reference co-ordinate system.


proc constructAx1*(): Ax1 {.constructor, importcpp: "gp_Ax1(@)", header: "gp_Ax1.hxx".}
proc constructAx1*(p: Pnt; v: Dir): Ax1 {.constructor, importcpp: "gp_Ax1(@)",
                                    header: "gp_Ax1.hxx".}
proc setDirection*(this: var Ax1; v: Dir) {.importcpp: "SetDirection",
                                      header: "gp_Ax1.hxx".}
proc setLocation*(this: var Ax1; p: Pnt) {.importcpp: "SetLocation",
                                     header: "gp_Ax1.hxx".}
proc direction*(this: Ax1): Dir {.noSideEffect, importcpp: "Direction",
                              header: "gp_Ax1.hxx".}
proc location*(this: Ax1): Pnt {.noSideEffect, importcpp: "Location",
                             header: "gp_Ax1.hxx".}
proc isCoaxial*(this: Ax1; other: Ax1; angularTolerance: float; linearTolerance: float): bool {.
    noSideEffect, importcpp: "IsCoaxial", header: "gp_Ax1.hxx".}
proc isNormal*(this: Ax1; other: Ax1; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsNormal", header: "gp_Ax1.hxx".}
proc isOpposite*(this: Ax1; other: Ax1; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsOpposite", header: "gp_Ax1.hxx".}
proc isParallel*(this: Ax1; other: Ax1; angularTolerance: float): bool {.noSideEffect,
    importcpp: "IsParallel", header: "gp_Ax1.hxx".}
proc angle*(this: Ax1; other: Ax1): float {.noSideEffect, importcpp: "Angle",
                                      header: "gp_Ax1.hxx".}
proc reverse*(this: var Ax1) {.importcpp: "Reverse", header: "gp_Ax1.hxx".}
proc reversed*(this: Ax1): Ax1 {.noSideEffect, importcpp: "Reversed",
                             header: "gp_Ax1.hxx".}
proc mirror*(this: var Ax1; p: Pnt) {.importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: Ax1; p: Pnt): Ax1 {.noSideEffect, importcpp: "Mirrored",
                                   header: "gp_Ax1.hxx".}
proc mirror*(this: var Ax1; a1: Ax1) {.importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: Ax1; a1: Ax1): Ax1 {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Ax1.hxx".}
proc mirror*(this: var Ax1; a2: Ax2) {.importcpp: "Mirror", header: "gp_Ax1.hxx".}
proc mirrored*(this: Ax1; a2: Ax2): Ax1 {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Ax1.hxx".}
proc rotate*(this: var Ax1; a1: Ax1; ang: float) {.importcpp: "Rotate",
    header: "gp_Ax1.hxx".}
proc rotated*(this: Ax1; a1: Ax1; ang: float): Ax1 {.noSideEffect, importcpp: "Rotated",
    header: "gp_Ax1.hxx".}
proc scale*(this: var Ax1; p: Pnt; s: float) {.importcpp: "Scale", header: "gp_Ax1.hxx".}
proc scaled*(this: Ax1; p: Pnt; s: float): Ax1 {.noSideEffect, importcpp: "Scaled",
    header: "gp_Ax1.hxx".}
proc transform*(this: var Ax1; t: Trsf) {.importcpp: "Transform", header: "gp_Ax1.hxx".}
proc transformed*(this: Ax1; t: Trsf): Ax1 {.noSideEffect, importcpp: "Transformed",
                                       header: "gp_Ax1.hxx".}
proc translate*(this: var Ax1; v: Vec) {.importcpp: "Translate", header: "gp_Ax1.hxx".}
proc translated*(this: Ax1; v: Vec): Ax1 {.noSideEffect, importcpp: "Translated",
                                     header: "gp_Ax1.hxx".}
proc translate*(this: var Ax1; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Ax1.hxx".}
proc translated*(this: Ax1; p1: Pnt; p2: Pnt): Ax1 {.noSideEffect,
    importcpp: "Translated", header: "gp_Ax1.hxx".}
proc dumpJson*(this: Ax1; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Ax1.hxx".}
proc initFromJson*(this: var Ax1; theSStream: StandardSStream; theStreamPos: var int): bool {.
    importcpp: "InitFromJson", header: "gp_Ax1.hxx".}
