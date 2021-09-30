##  Created on: 1995-12-21
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepBuild_LoopSet"
discard "forward decl of TopOpeBRepBuild_LoopClassifier"
type
  TopOpeBRepBuildFaceAreaBuilder* {.importcpp: "TopOpeBRepBuild_FaceAreaBuilder", header: "TopOpeBRepBuild_FaceAreaBuilder.hxx",
                                   bycopy.} = object of TopOpeBRepBuildArea2dBuilder


proc `new`*(this: var TopOpeBRepBuildFaceAreaBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_FaceAreaBuilder::operator new",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildFaceAreaBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_FaceAreaBuilder::operator delete",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildFaceAreaBuilder; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_FaceAreaBuilder::operator new[]",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildFaceAreaBuilder; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_FaceAreaBuilder::operator delete[]",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc `new`*(this: var TopOpeBRepBuildFaceAreaBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepBuild_FaceAreaBuilder::operator new",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc `delete`*(this: var TopOpeBRepBuildFaceAreaBuilder; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_FaceAreaBuilder::operator delete",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc constructTopOpeBRepBuildFaceAreaBuilder*(): TopOpeBRepBuildFaceAreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_FaceAreaBuilder(@)",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc constructTopOpeBRepBuildFaceAreaBuilder*(ls: var TopOpeBRepBuildLoopSet;
    lc: var TopOpeBRepBuildLoopClassifier; forceClass: StandardBoolean = false): TopOpeBRepBuildFaceAreaBuilder {.
    constructor, importcpp: "TopOpeBRepBuild_FaceAreaBuilder(@)",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}
proc initFaceAreaBuilder*(this: var TopOpeBRepBuildFaceAreaBuilder;
                         ls: var TopOpeBRepBuildLoopSet;
                         lc: var TopOpeBRepBuildLoopClassifier;
                         forceClass: StandardBoolean = false) {.
    importcpp: "InitFaceAreaBuilder",
    header: "TopOpeBRepBuild_FaceAreaBuilder.hxx".}