##  Created on: 1991-05-27
##  Created by: Isabelle GRIGNON
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

discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntPatch_Point"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IntPatch_WLine"
discard "forward decl of IntPatch_WLine"
type
  HandleC1C1* = Handle[IntPatchWLine]

## ! Definition of set of points as a result of the intersection
## ! between 2 parametrised patches.

type
  IntPatchWLine* {.importcpp: "IntPatch_WLine", header: "IntPatch_WLine.hxx", bycopy.} = object of IntPatchPointLine ##
                                                                                                           ## !
                                                                                                           ## Enumeration
                                                                                                           ## of
                                                                                                           ## ways
                                                                                                           ## of
                                                                                                           ## WLine
                                                                                                           ## creation.
    ## ! identifies the way of <*this> creation

  IntPatchWLineIntPatchWLType* {.size: sizeof(cint),
                                importcpp: "IntPatch_WLine::IntPatch_WLType",
                                header: "IntPatch_WLine.hxx".} = enum
    IntPatchWLUnknown, IntPatchWLImpImp, IntPatchWLImpPrm, IntPatchWLPrmPrm


proc constructIntPatchWLine*(line: Handle[IntSurfLineOn2S]; tang: bool;
                            trans1: IntSurfTypeTrans; trans2: IntSurfTypeTrans): IntPatchWLine {.
    constructor, importcpp: "IntPatch_WLine(@)", header: "IntPatch_WLine.hxx".}
proc constructIntPatchWLine*(line: Handle[IntSurfLineOn2S]; tang: bool;
                            situ1: IntSurfSituation; situ2: IntSurfSituation): IntPatchWLine {.
    constructor, importcpp: "IntPatch_WLine(@)", header: "IntPatch_WLine.hxx".}
proc constructIntPatchWLine*(line: Handle[IntSurfLineOn2S]; tang: bool): IntPatchWLine {.
    constructor, importcpp: "IntPatch_WLine(@)", header: "IntPatch_WLine.hxx".}
proc addVertex*(this: var IntPatchWLine; pnt: IntPatchPoint;
               theIsPrepend: bool = false) {.importcpp: "AddVertex",
    header: "IntPatch_WLine.hxx".}
proc setPoint*(this: var IntPatchWLine; index: cint; pnt: IntPatchPoint) {.
    importcpp: "SetPoint", header: "IntPatch_WLine.hxx".}
proc replace*(this: var IntPatchWLine; index: cint; pnt: IntPatchPoint) {.
    importcpp: "Replace", header: "IntPatch_WLine.hxx".}
proc setFirstPoint*(this: var IntPatchWLine; indFirst: cint) {.
    importcpp: "SetFirstPoint", header: "IntPatch_WLine.hxx".}
proc setLastPoint*(this: var IntPatchWLine; indLast: cint) {.
    importcpp: "SetLastPoint", header: "IntPatch_WLine.hxx".}
proc nbPnts*(this: IntPatchWLine): cint {.noSideEffect, importcpp: "NbPnts",
                                      header: "IntPatch_WLine.hxx".}
proc point*(this: IntPatchWLine; index: cint): IntSurfPntOn2S {.noSideEffect,
    importcpp: "Point", header: "IntPatch_WLine.hxx".}
proc hasFirstPoint*(this: IntPatchWLine): bool {.noSideEffect,
    importcpp: "HasFirstPoint", header: "IntPatch_WLine.hxx".}
proc hasLastPoint*(this: IntPatchWLine): bool {.noSideEffect,
    importcpp: "HasLastPoint", header: "IntPatch_WLine.hxx".}
proc firstPoint*(this: IntPatchWLine): IntPatchPoint {.noSideEffect,
    importcpp: "FirstPoint", header: "IntPatch_WLine.hxx".}
proc lastPoint*(this: IntPatchWLine): IntPatchPoint {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_WLine.hxx".}
proc firstPoint*(this: IntPatchWLine; indfirst: var cint): IntPatchPoint {.
    noSideEffect, importcpp: "FirstPoint", header: "IntPatch_WLine.hxx".}
proc lastPoint*(this: IntPatchWLine; indlast: var cint): IntPatchPoint {.noSideEffect,
    importcpp: "LastPoint", header: "IntPatch_WLine.hxx".}
proc nbVertex*(this: IntPatchWLine): cint {.noSideEffect, importcpp: "NbVertex",
                                        header: "IntPatch_WLine.hxx".}
proc vertex*(this: IntPatchWLine; index: cint): IntPatchPoint {.noSideEffect,
    importcpp: "Vertex", header: "IntPatch_WLine.hxx".}
proc changeVertex*(this: var IntPatchWLine; index: cint): var IntPatchPoint {.
    importcpp: "ChangeVertex", header: "IntPatch_WLine.hxx".}
proc computeVertexParameters*(this: var IntPatchWLine; tol: cfloat) {.
    importcpp: "ComputeVertexParameters", header: "IntPatch_WLine.hxx".}
proc curve*(this: IntPatchWLine): Handle[IntSurfLineOn2S] {.noSideEffect,
    importcpp: "Curve", header: "IntPatch_WLine.hxx".}
proc isOutSurf1Box*(this: IntPatchWLine; theP: Pnt2d): bool {.noSideEffect,
    importcpp: "IsOutSurf1Box", header: "IntPatch_WLine.hxx".}
proc isOutSurf2Box*(this: IntPatchWLine; theP: Pnt2d): bool {.noSideEffect,
    importcpp: "IsOutSurf2Box", header: "IntPatch_WLine.hxx".}
proc isOutBox*(this: IntPatchWLine; theP: Pnt): bool {.noSideEffect,
    importcpp: "IsOutBox", header: "IntPatch_WLine.hxx".}
proc setPeriod*(this: var IntPatchWLine; pu1: cfloat; pv1: cfloat; pu2: cfloat;
               pv2: cfloat) {.importcpp: "SetPeriod", header: "IntPatch_WLine.hxx".}
proc u1Period*(this: IntPatchWLine): cfloat {.noSideEffect, importcpp: "U1Period",
    header: "IntPatch_WLine.hxx".}
proc v1Period*(this: IntPatchWLine): cfloat {.noSideEffect, importcpp: "V1Period",
    header: "IntPatch_WLine.hxx".}
proc u2Period*(this: IntPatchWLine): cfloat {.noSideEffect, importcpp: "U2Period",
    header: "IntPatch_WLine.hxx".}
proc v2Period*(this: IntPatchWLine): cfloat {.noSideEffect, importcpp: "V2Period",
    header: "IntPatch_WLine.hxx".}
proc setArcOnS1*(this: var IntPatchWLine; a: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "SetArcOnS1", header: "IntPatch_WLine.hxx".}
proc hasArcOnS1*(this: IntPatchWLine): bool {.noSideEffect, importcpp: "HasArcOnS1",
    header: "IntPatch_WLine.hxx".}
proc getArcOnS1*(this: IntPatchWLine): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "GetArcOnS1", header: "IntPatch_WLine.hxx".}
proc setArcOnS2*(this: var IntPatchWLine; a: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "SetArcOnS2", header: "IntPatch_WLine.hxx".}
proc hasArcOnS2*(this: IntPatchWLine): bool {.noSideEffect, importcpp: "HasArcOnS2",
    header: "IntPatch_WLine.hxx".}
proc getArcOnS2*(this: IntPatchWLine): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "GetArcOnS2", header: "IntPatch_WLine.hxx".}
proc clearVertexes*(this: var IntPatchWLine) {.importcpp: "ClearVertexes",
    header: "IntPatch_WLine.hxx".}
proc removeVertex*(this: var IntPatchWLine; theIndex: cint) {.
    importcpp: "RemoveVertex", header: "IntPatch_WLine.hxx".}
proc insertVertexBefore*(this: var IntPatchWLine; theIndex: cint;
                        thePnt: IntPatchPoint) {.importcpp: "InsertVertexBefore",
    header: "IntPatch_WLine.hxx".}
proc dump*(this: IntPatchWLine; theMode: cint) {.noSideEffect, importcpp: "Dump",
    header: "IntPatch_WLine.hxx".}
proc enablePurging*(this: var IntPatchWLine; theIsEnabled: bool) {.
    importcpp: "EnablePurging", header: "IntPatch_WLine.hxx".}
proc isPurgingAllowed*(this: var IntPatchWLine): bool {.
    importcpp: "IsPurgingAllowed", header: "IntPatch_WLine.hxx".}
proc getCreatingWay*(this: IntPatchWLine): IntPatchWLineIntPatchWLType {.
    noSideEffect, importcpp: "GetCreatingWay", header: "IntPatch_WLine.hxx".}
proc setCreatingWayInfo*(this: var IntPatchWLine;
                        theAlgo: IntPatchWLineIntPatchWLType) {.
    importcpp: "SetCreatingWayInfo", header: "IntPatch_WLine.hxx".}
type
  IntPatchWLinebaseType* = IntPatchPointLine

proc getTypeName*(): cstring {.importcpp: "IntPatch_WLine::get_type_name(@)",
                            header: "IntPatch_WLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntPatch_WLine::get_type_descriptor(@)",
    header: "IntPatch_WLine.hxx".}
proc dynamicType*(this: IntPatchWLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntPatch_WLine.hxx".}
























