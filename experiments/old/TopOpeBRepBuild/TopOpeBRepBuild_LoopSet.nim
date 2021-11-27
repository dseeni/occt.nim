##  Created on: 1993-03-23
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepBuild_Loop"
type
  TopOpeBRepBuildLoopSet* {.importcpp: "TopOpeBRepBuild_LoopSet",
                           header: "TopOpeBRepBuild_LoopSet.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepBuildLoopSet; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_LoopSet::operator new",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc `delete`*(this: var TopOpeBRepBuildLoopSet; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_LoopSet::operator delete",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildLoopSet; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_LoopSet::operator new[]",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildLoopSet; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_LoopSet::operator delete[]",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc `new`*(this: var TopOpeBRepBuildLoopSet; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_LoopSet::operator new",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc `delete`*(this: var TopOpeBRepBuildLoopSet; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_LoopSet::operator delete",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc constructTopOpeBRepBuildLoopSet*(): TopOpeBRepBuildLoopSet {.constructor,
    importcpp: "TopOpeBRepBuild_LoopSet(@)", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc destroyTopOpeBRepBuildLoopSet*(this: var TopOpeBRepBuildLoopSet) {.
    importcpp: "#.~TopOpeBRepBuild_LoopSet()",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc changeListOfLoop*(this: var TopOpeBRepBuildLoopSet): var TopOpeBRepBuildListOfLoop {.
    importcpp: "ChangeListOfLoop", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc initLoop*(this: var TopOpeBRepBuildLoopSet) {.importcpp: "InitLoop",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc moreLoop*(this: TopOpeBRepBuildLoopSet): StandardBoolean {.noSideEffect,
    importcpp: "MoreLoop", header: "TopOpeBRepBuild_LoopSet.hxx".}
proc nextLoop*(this: var TopOpeBRepBuildLoopSet) {.importcpp: "NextLoop",
    header: "TopOpeBRepBuild_LoopSet.hxx".}
proc loop*(this: TopOpeBRepBuildLoopSet): Handle[TopOpeBRepBuildLoop] {.
    noSideEffect, importcpp: "Loop", header: "TopOpeBRepBuild_LoopSet.hxx".}