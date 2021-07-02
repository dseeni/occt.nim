##  Created on: 2014-05-22
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

type
  SelectMgrTriangFrustums* = NCollectionList[Handle[SelectMgrTriangularFrustum]]
  SelectMgrTriangFrustumsIter* = Iterator[Handle[SelectMgrTriangularFrustum]]

## ! This class is used to handle polyline selection. The main principle of polyline selection
## ! algorithm is to split the polygon defined by polyline onto triangles. Than each of
## ! them is considered as a base for triangular frustum building. In other
## ! words, each triangle vertiex will be projected from 2d screen space to 3d world space
## ! onto near and far view frustum planes. Thus, the projected triangles make up the bases of
## ! selecting frustum. When the set of such frustums is created, the function determining
## ! selection iterates through triangular frustum set and searches for overlap with any
## ! frustum.

type
  SelectMgrTriangularFrustumSet* {.importcpp: "SelectMgr_TriangularFrustumSet",
                                  header: "SelectMgr_TriangularFrustumSet.hxx",
                                  bycopy.} = object of SelectMgrBaseFrustum ## ! Checks whether the segment
                                                                       ## intersects with the boundary of the current volume selection


proc constructSelectMgrTriangularFrustumSet*(): SelectMgrTriangularFrustumSet {.
    constructor, importcpp: "SelectMgr_TriangularFrustumSet(@)",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc destroySelectMgrTriangularFrustumSet*(
    this: var SelectMgrTriangularFrustumSet) {.
    importcpp: "#.~SelectMgr_TriangularFrustumSet()",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc build*(this: var SelectMgrTriangularFrustumSet; thePoints: TColgpArray1OfPnt2d) {.
    importcpp: "Build", header: "SelectMgr_TriangularFrustumSet.hxx".}
proc scaleAndTransform*(this: SelectMgrTriangularFrustumSet;
                       theScale: StandardInteger; theTrsf: GpGTrsf): Handle[
    SelectMgrBaseFrustum] {.noSideEffect, importcpp: "ScaleAndTransform",
                           header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; theMinPnt: SelectMgrVec3;
              theMaxPnt: SelectMgrVec3; theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; theMinPnt: SelectMgrVec3;
              theMaxPnt: SelectMgrVec3; theInside: ptr StandardBoolean): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; thePnt: GpPnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet;
              theArrayOfPnts: TColgpArray1OfPnt;
              theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; thePnt1: GpPnt; thePnt2: GpPnt;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc overlaps*(this: SelectMgrTriangularFrustumSet; thePnt1: GpPnt; thePnt2: GpPnt;
              thePnt3: GpPnt; theSensType: Select3D_TypeOfSensitivity;
              theClipRange: SelectMgrViewClipRange;
              thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    noSideEffect, importcpp: "Overlaps",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc getPlanes*(this: SelectMgrTriangularFrustumSet;
               thePlaneEquations: var NCollectionVector[SelectMgrVec4]) {.
    noSideEffect, importcpp: "GetPlanes",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc setAllowOverlapDetection*(this: var SelectMgrTriangularFrustumSet;
                              theIsToAllow: StandardBoolean) {.
    importcpp: "SetAllowOverlapDetection",
    header: "SelectMgr_TriangularFrustumSet.hxx".}
proc dumpJson*(this: SelectMgrTriangularFrustumSet;
              theOStream: var StandardOStream; theDepth: StandardInteger = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_TriangularFrustumSet.hxx".}

