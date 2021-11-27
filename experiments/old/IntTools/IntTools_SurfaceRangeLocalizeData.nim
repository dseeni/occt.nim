##  Created on: 2005-10-14
##  Created by: Mikhail KLOKOV
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

discard "forward decl of IntTools_SurfaceRangeSample"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  IntToolsSurfaceRangeLocalizeData* {.importcpp: "IntTools_SurfaceRangeLocalizeData", header: "IntTools_SurfaceRangeLocalizeData.hxx",
                                     bycopy.} = object


proc constructIntToolsSurfaceRangeLocalizeData*(): IntToolsSurfaceRangeLocalizeData {.
    constructor, importcpp: "IntTools_SurfaceRangeLocalizeData(@)",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc constructIntToolsSurfaceRangeLocalizeData*(theNbSampleU: cint;
    theNbSampleV: cint; theMinRangeU: cfloat; theMinRangeV: cfloat): IntToolsSurfaceRangeLocalizeData {.
    constructor, importcpp: "IntTools_SurfaceRangeLocalizeData(@)",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc constructIntToolsSurfaceRangeLocalizeData*(
    other: IntToolsSurfaceRangeLocalizeData): IntToolsSurfaceRangeLocalizeData {.
    constructor, importcpp: "IntTools_SurfaceRangeLocalizeData(@)",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc assign*(this: var IntToolsSurfaceRangeLocalizeData;
            other: IntToolsSurfaceRangeLocalizeData): var IntToolsSurfaceRangeLocalizeData {.
    importcpp: "Assign", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getNbSampleU*(this: IntToolsSurfaceRangeLocalizeData): cint {.noSideEffect,
    importcpp: "GetNbSampleU", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getNbSampleV*(this: IntToolsSurfaceRangeLocalizeData): cint {.noSideEffect,
    importcpp: "GetNbSampleV", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getMinRangeU*(this: IntToolsSurfaceRangeLocalizeData): cfloat {.noSideEffect,
    importcpp: "GetMinRangeU", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getMinRangeV*(this: IntToolsSurfaceRangeLocalizeData): cfloat {.noSideEffect,
    importcpp: "GetMinRangeV", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc addOutRange*(this: var IntToolsSurfaceRangeLocalizeData;
                 theRange: IntToolsSurfaceRangeSample) {.importcpp: "AddOutRange",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc addBox*(this: var IntToolsSurfaceRangeLocalizeData;
            theRange: IntToolsSurfaceRangeSample; theBox: BndBox) {.
    importcpp: "AddBox", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc findBox*(this: IntToolsSurfaceRangeLocalizeData;
             theRange: IntToolsSurfaceRangeSample; theBox: var BndBox): bool {.
    noSideEffect, importcpp: "FindBox",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc isRangeOut*(this: IntToolsSurfaceRangeLocalizeData;
                theRange: IntToolsSurfaceRangeSample): bool {.noSideEffect,
    importcpp: "IsRangeOut", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc listRangeOut*(this: IntToolsSurfaceRangeLocalizeData;
                  theList: var IntToolsListOfSurfaceRangeSample) {.noSideEffect,
    importcpp: "ListRangeOut", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc removeRangeOutAll*(this: var IntToolsSurfaceRangeLocalizeData) {.
    importcpp: "RemoveRangeOutAll",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc setGridDeflection*(this: var IntToolsSurfaceRangeLocalizeData;
                       theDeflection: cfloat) {.importcpp: "SetGridDeflection",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getGridDeflection*(this: IntToolsSurfaceRangeLocalizeData): cfloat {.
    noSideEffect, importcpp: "GetGridDeflection",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc setRangeUGrid*(this: var IntToolsSurfaceRangeLocalizeData; theNbUGrid: cint) {.
    importcpp: "SetRangeUGrid", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getRangeUGrid*(this: IntToolsSurfaceRangeLocalizeData): cint {.noSideEffect,
    importcpp: "GetRangeUGrid", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc setUParam*(this: var IntToolsSurfaceRangeLocalizeData; theIndex: cint;
               theUParam: cfloat) {.importcpp: "SetUParam", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getUParam*(this: IntToolsSurfaceRangeLocalizeData; theIndex: cint): cfloat {.
    noSideEffect, importcpp: "GetUParam",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc setRangeVGrid*(this: var IntToolsSurfaceRangeLocalizeData; theNbVGrid: cint) {.
    importcpp: "SetRangeVGrid", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getRangeVGrid*(this: IntToolsSurfaceRangeLocalizeData): cint {.noSideEffect,
    importcpp: "GetRangeVGrid", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc setVParam*(this: var IntToolsSurfaceRangeLocalizeData; theIndex: cint;
               theVParam: cfloat) {.importcpp: "SetVParam", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getVParam*(this: IntToolsSurfaceRangeLocalizeData; theIndex: cint): cfloat {.
    noSideEffect, importcpp: "GetVParam",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc setGridPoint*(this: var IntToolsSurfaceRangeLocalizeData; theUIndex: cint;
                  theVIndex: cint; thePoint: Pnt) {.importcpp: "SetGridPoint",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getGridPoint*(this: IntToolsSurfaceRangeLocalizeData; theUIndex: cint;
                  theVIndex: cint): Pnt {.noSideEffect, importcpp: "GetGridPoint", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc setFrame*(this: var IntToolsSurfaceRangeLocalizeData; theUMin: cfloat;
              theUMax: cfloat; theVMin: cfloat; theVMax: cfloat) {.
    importcpp: "SetFrame", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getNBUPointsInFrame*(this: IntToolsSurfaceRangeLocalizeData): cint {.
    noSideEffect, importcpp: "GetNBUPointsInFrame",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getNBVPointsInFrame*(this: IntToolsSurfaceRangeLocalizeData): cint {.
    noSideEffect, importcpp: "GetNBVPointsInFrame",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getPointInFrame*(this: IntToolsSurfaceRangeLocalizeData; theUIndex: cint;
                     theVIndex: cint): Pnt {.noSideEffect,
    importcpp: "GetPointInFrame", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getUParamInFrame*(this: IntToolsSurfaceRangeLocalizeData; theIndex: cint): cfloat {.
    noSideEffect, importcpp: "GetUParamInFrame",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc getVParamInFrame*(this: IntToolsSurfaceRangeLocalizeData; theIndex: cint): cfloat {.
    noSideEffect, importcpp: "GetVParamInFrame",
    header: "IntTools_SurfaceRangeLocalizeData.hxx".}
proc clearGrid*(this: var IntToolsSurfaceRangeLocalizeData) {.
    importcpp: "ClearGrid", header: "IntTools_SurfaceRangeLocalizeData.hxx".}
























