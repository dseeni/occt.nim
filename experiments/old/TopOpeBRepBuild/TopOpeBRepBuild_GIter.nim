##  Created on: 1996-02-13
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TopOpeBRepBuild_GTopo"
type
  TopOpeBRepBuildGIter* {.importcpp: "TopOpeBRepBuild_GIter",
                         header: "TopOpeBRepBuild_GIter.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepBuildGIter; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_GIter::operator new",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc `delete`*(this: var TopOpeBRepBuildGIter; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_GIter::operator delete",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildGIter; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_GIter::operator new[]",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildGIter; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_GIter::operator delete[]",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc `new`*(this: var TopOpeBRepBuildGIter; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_GIter::operator new",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc `delete`*(this: var TopOpeBRepBuildGIter; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_GIter::operator delete",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc constructTopOpeBRepBuildGIter*(): TopOpeBRepBuildGIter {.constructor,
    importcpp: "TopOpeBRepBuild_GIter(@)", header: "TopOpeBRepBuild_GIter.hxx".}
proc constructTopOpeBRepBuildGIter*(g: TopOpeBRepBuildGTopo): TopOpeBRepBuildGIter {.
    constructor, importcpp: "TopOpeBRepBuild_GIter(@)",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc init*(this: var TopOpeBRepBuildGIter) {.importcpp: "Init",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc init*(this: var TopOpeBRepBuildGIter; g: TopOpeBRepBuildGTopo) {.
    importcpp: "Init", header: "TopOpeBRepBuild_GIter.hxx".}
proc more*(this: TopOpeBRepBuildGIter): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepBuild_GIter.hxx".}
proc next*(this: var TopOpeBRepBuildGIter) {.importcpp: "Next",
    header: "TopOpeBRepBuild_GIter.hxx".}
proc current*(this: TopOpeBRepBuildGIter; s1: var TopAbsState; s2: var TopAbsState) {.
    noSideEffect, importcpp: "Current", header: "TopOpeBRepBuild_GIter.hxx".}
proc dump*(this: TopOpeBRepBuildGIter; os: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "TopOpeBRepBuild_GIter.hxx".}