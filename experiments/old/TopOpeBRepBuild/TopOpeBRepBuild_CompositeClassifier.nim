##  Created on: 1996-01-05
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

discard "forward decl of TopOpeBRepBuild_BlockBuilder"
discard "forward decl of TopOpeBRepBuild_Loop"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepBuildCompositeClassifier* {.importcpp: "TopOpeBRepBuild_CompositeClassifier", header: "TopOpeBRepBuild_CompositeClassifier.hxx",
                                       bycopy.} = object of TopOpeBRepBuildLoopClassifier


proc `new`*(this: var TopOpeBRepBuildCompositeClassifier; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_CompositeClassifier::operator new",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc `delete`*(this: var TopOpeBRepBuildCompositeClassifier; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_CompositeClassifier::operator delete",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc `new[]`*(this: var TopOpeBRepBuildCompositeClassifier; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepBuild_CompositeClassifier::operator new[]",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc `delete[]`*(this: var TopOpeBRepBuildCompositeClassifier; theAddress: pointer) {.
    importcpp: "TopOpeBRepBuild_CompositeClassifier::operator delete[]",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc `new`*(this: var TopOpeBRepBuildCompositeClassifier; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "TopOpeBRepBuild_CompositeClassifier::operator new", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc `delete`*(this: var TopOpeBRepBuildCompositeClassifier; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepBuild_CompositeClassifier::operator delete",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc compare*(this: var TopOpeBRepBuildCompositeClassifier;
             l1: Handle[TopOpeBRepBuildLoop]; l2: Handle[TopOpeBRepBuildLoop]): TopAbsState {.
    importcpp: "Compare", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc compareShapes*(this: var TopOpeBRepBuildCompositeClassifier; b1: TopoDS_Shape;
                   b2: TopoDS_Shape): TopAbsState {.importcpp: "CompareShapes",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc compareElementToShape*(this: var TopOpeBRepBuildCompositeClassifier;
                           e: TopoDS_Shape; b: TopoDS_Shape): TopAbsState {.
    importcpp: "CompareElementToShape",
    header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc resetShape*(this: var TopOpeBRepBuildCompositeClassifier; b: TopoDS_Shape) {.
    importcpp: "ResetShape", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc resetElement*(this: var TopOpeBRepBuildCompositeClassifier; e: TopoDS_Shape) {.
    importcpp: "ResetElement", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc compareElement*(this: var TopOpeBRepBuildCompositeClassifier; e: TopoDS_Shape): StandardBoolean {.
    importcpp: "CompareElement", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}
proc state*(this: var TopOpeBRepBuildCompositeClassifier): TopAbsState {.
    importcpp: "State", header: "TopOpeBRepBuild_CompositeClassifier.hxx".}