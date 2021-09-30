##  Created on: 1995-06-13
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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

##  resolve name collisions with X11 headers

when defined(Status):
  discard
## ! Provides a tool to make cylindrical holes on a shape.

type
  BRepFeatMakeCylindricalHole* {.importcpp: "BRepFeat_MakeCylindricalHole",
                                header: "BRepFeat_MakeCylindricalHole.hxx", bycopy.} = object of BRepFeatBuilder ##
                                                                                                          ## !
                                                                                                          ## Unhide
                                                                                                          ## the
                                                                                                          ## base
                                                                                                          ## class
                                                                                                          ## member
                                                                                                          ## to
                                                                                                          ## avoid
                                                                                                          ## Clang
                                                                                                          ## warnings


proc `new`*(this: var BRepFeatMakeCylindricalHole; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakeCylindricalHole::operator new",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc `delete`*(this: var BRepFeatMakeCylindricalHole; theAddress: pointer) {.
    importcpp: "BRepFeat_MakeCylindricalHole::operator delete",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc `new[]`*(this: var BRepFeatMakeCylindricalHole; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakeCylindricalHole::operator new[]",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc `delete[]`*(this: var BRepFeatMakeCylindricalHole; theAddress: pointer) {.
    importcpp: "BRepFeat_MakeCylindricalHole::operator delete[]",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc `new`*(this: var BRepFeatMakeCylindricalHole; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFeat_MakeCylindricalHole::operator new",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc `delete`*(this: var BRepFeatMakeCylindricalHole; a2: pointer; a3: pointer) {.
    importcpp: "BRepFeat_MakeCylindricalHole::operator delete",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc constructBRepFeatMakeCylindricalHole*(): BRepFeatMakeCylindricalHole {.
    constructor, importcpp: "BRepFeat_MakeCylindricalHole(@)",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc init*(this: var BRepFeatMakeCylindricalHole; axis: Ax1) {.importcpp: "Init",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc init*(this: var BRepFeatMakeCylindricalHole; s: TopoDS_Shape; axis: Ax1) {.
    importcpp: "Init", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc perform*(this: var BRepFeatMakeCylindricalHole; radius: StandardReal) {.
    importcpp: "Perform", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc perform*(this: var BRepFeatMakeCylindricalHole; radius: StandardReal;
             pFrom: StandardReal; pTo: StandardReal;
             withControl: StandardBoolean = true) {.importcpp: "Perform",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc performThruNext*(this: var BRepFeatMakeCylindricalHole; radius: StandardReal;
                     withControl: StandardBoolean = true) {.
    importcpp: "PerformThruNext", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc performUntilEnd*(this: var BRepFeatMakeCylindricalHole; radius: StandardReal;
                     withControl: StandardBoolean = true) {.
    importcpp: "PerformUntilEnd", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc performBlind*(this: var BRepFeatMakeCylindricalHole; radius: StandardReal;
                  length: StandardReal; withControl: StandardBoolean = true) {.
    importcpp: "PerformBlind", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc status*(this: BRepFeatMakeCylindricalHole): BRepFeatStatus {.noSideEffect,
    importcpp: "Status", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc build*(this: var BRepFeatMakeCylindricalHole) {.importcpp: "Build",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
## using statement
