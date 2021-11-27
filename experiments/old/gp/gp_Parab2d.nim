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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  Parab2d* {.importcpp: "gp_Parab2d", header: "gp_Parab2d.hxx", bycopy.} = object


proc `new`*(this: var Parab2d; theSize: csize_t): pointer {.
    importcpp: "gp_Parab2d::operator new", header: "gp_Parab2d.hxx".}
proc `delete`*(this: var Parab2d; theAddress: pointer) {.
    importcpp: "gp_Parab2d::operator delete", header: "gp_Parab2d.hxx".}
proc `new[]`*(this: var Parab2d; theSize: csize_t): pointer {.
    importcpp: "gp_Parab2d::operator new[]", header: "gp_Parab2d.hxx".}
proc `delete[]`*(this: var Parab2d; theAddress: pointer) {.
    importcpp: "gp_Parab2d::operator delete[]", header: "gp_Parab2d.hxx".}
proc `new`*(this: var Parab2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Parab2d::operator new", header: "gp_Parab2d.hxx".}
proc `delete`*(this: var Parab2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Parab2d::operator delete", header: "gp_Parab2d.hxx".}
proc constructParab2d*(): Parab2d {.constructor, importcpp: "gp_Parab2d(@)",
                                 header: "gp_Parab2d.hxx".}
proc constructParab2d*(theMirrorAxis: Ax2d; theFocalLength: StandardReal;
                      theSense: StandardBoolean = true): Parab2d {.constructor,
    importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc constructParab2d*(theAxes: Ax22d; theFocalLength: StandardReal): Parab2d {.
    constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc constructParab2d*(theDirectrix: Ax2d; theFocus: Pnt2d;
                      theSense: StandardBoolean = true): Parab2d {.constructor,
    importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc setFocal*(this: var Parab2d; focal: StandardReal) {.importcpp: "SetFocal",
    header: "gp_Parab2d.hxx".}
proc setLocation*(this: var Parab2d; p: Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Parab2d.hxx".}
proc setMirrorAxis*(this: var Parab2d; a: Ax2d) {.importcpp: "SetMirrorAxis",
    header: "gp_Parab2d.hxx".}
proc setAxis*(this: var Parab2d; a: Ax22d) {.importcpp: "SetAxis",
                                       header: "gp_Parab2d.hxx".}
proc coefficients*(this: Parab2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: "gp_Parab2d.hxx".}
proc directrix*(this: Parab2d): Ax2d {.noSideEffect, importcpp: "Directrix",
                                   header: "gp_Parab2d.hxx".}
proc focal*(this: Parab2d): StandardReal {.noSideEffect, importcpp: "Focal",
                                       header: "gp_Parab2d.hxx".}
proc focus*(this: Parab2d): Pnt2d {.noSideEffect, importcpp: "Focus",
                                header: "gp_Parab2d.hxx".}
proc location*(this: Parab2d): Pnt2d {.noSideEffect, importcpp: "Location",
                                   header: "gp_Parab2d.hxx".}
proc mirrorAxis*(this: Parab2d): Ax2d {.noSideEffect, importcpp: "MirrorAxis",
                                    header: "gp_Parab2d.hxx".}
proc axis*(this: Parab2d): Ax22d {.noSideEffect, importcpp: "Axis",
                               header: "gp_Parab2d.hxx".}
proc parameter*(this: Parab2d): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: "gp_Parab2d.hxx".}
proc reverse*(this: var Parab2d) {.importcpp: "Reverse", header: "gp_Parab2d.hxx".}
proc reversed*(this: Parab2d): Parab2d {.noSideEffect, importcpp: "Reversed",
                                     header: "gp_Parab2d.hxx".}
proc isDirect*(this: Parab2d): StandardBoolean {.noSideEffect, importcpp: "IsDirect",
    header: "gp_Parab2d.hxx".}
proc mirror*(this: var Parab2d; p: Pnt2d) {.importcpp: "Mirror",
                                      header: "gp_Parab2d.hxx".}
proc mirrored*(this: Parab2d; p: Pnt2d): Parab2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Parab2d.hxx".}
proc mirror*(this: var Parab2d; a: Ax2d) {.importcpp: "Mirror", header: "gp_Parab2d.hxx".}
proc mirrored*(this: Parab2d; a: Ax2d): Parab2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Parab2d.hxx".}
proc rotate*(this: var Parab2d; p: Pnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Parab2d.hxx".}
proc rotated*(this: Parab2d; p: Pnt2d; ang: StandardReal): Parab2d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Parab2d.hxx".}
proc scale*(this: var Parab2d; p: Pnt2d; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Parab2d.hxx".}
proc scaled*(this: Parab2d; p: Pnt2d; s: StandardReal): Parab2d {.noSideEffect,
    importcpp: "Scaled", header: "gp_Parab2d.hxx".}
proc transform*(this: var Parab2d; t: Trsf2d) {.importcpp: "Transform",
    header: "gp_Parab2d.hxx".}
proc transformed*(this: Parab2d; t: Trsf2d): Parab2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Parab2d.hxx".}
proc translate*(this: var Parab2d; v: Vec2d) {.importcpp: "Translate",
    header: "gp_Parab2d.hxx".}
proc translated*(this: Parab2d; v: Vec2d): Parab2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Parab2d.hxx".}
proc translate*(this: var Parab2d; p1: Pnt2d; p2: Pnt2d) {.importcpp: "Translate",
    header: "gp_Parab2d.hxx".}
proc translated*(this: Parab2d; p1: Pnt2d; p2: Pnt2d): Parab2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Parab2d.hxx".}