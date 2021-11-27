##  Created on: 1995-01-27
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

discard "forward decl of IntPatch_WLine"
discard "forward decl of ApproxInt_SvSurfaces"
type
  GeomIntTheMultiLineOfWLApprox* {.importcpp: "GeomInt_TheMultiLineOfWLApprox",
                                  header: "GeomInt_TheMultiLineOfWLApprox.hxx",
                                  bycopy.} = object


proc `new`*(this: var GeomIntTheMultiLineOfWLApprox; theSize: csize_t): pointer {.
    importcpp: "GeomInt_TheMultiLineOfWLApprox::operator new",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntTheMultiLineOfWLApprox; theAddress: pointer) {.
    importcpp: "GeomInt_TheMultiLineOfWLApprox::operator delete",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc `new[]`*(this: var GeomIntTheMultiLineOfWLApprox; theSize: csize_t): pointer {.
    importcpp: "GeomInt_TheMultiLineOfWLApprox::operator new[]",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc `delete[]`*(this: var GeomIntTheMultiLineOfWLApprox; theAddress: pointer) {.
    importcpp: "GeomInt_TheMultiLineOfWLApprox::operator delete[]",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc `new`*(this: var GeomIntTheMultiLineOfWLApprox; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomInt_TheMultiLineOfWLApprox::operator new",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntTheMultiLineOfWLApprox; a2: pointer; a3: pointer) {.
    importcpp: "GeomInt_TheMultiLineOfWLApprox::operator delete",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc constructGeomIntTheMultiLineOfWLApprox*(): GeomIntTheMultiLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheMultiLineOfWLApprox(@)",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc constructGeomIntTheMultiLineOfWLApprox*(line: Handle[IntPatchWLine];
    ptrSvSurfaces: StandardAddress; nbP3d: int; nbP2d: int;
    approxU1V1: StandardBoolean; approxU2V2: StandardBoolean; xo: StandardReal;
    yo: StandardReal; zo: StandardReal; u1o: StandardReal; v1o: StandardReal;
    u2o: StandardReal; v2o: StandardReal; p2DOnFirst: StandardBoolean;
    indMin: int = 0; indMax: int = 0): GeomIntTheMultiLineOfWLApprox {.constructor,
    importcpp: "GeomInt_TheMultiLineOfWLApprox(@)",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc constructGeomIntTheMultiLineOfWLApprox*(line: Handle[IntPatchWLine];
    nbP3d: int; nbP2d: int; approxU1V1: StandardBoolean; approxU2V2: StandardBoolean;
    xo: StandardReal; yo: StandardReal; zo: StandardReal; u1o: StandardReal;
    v1o: StandardReal; u2o: StandardReal; v2o: StandardReal;
    p2DOnFirst: StandardBoolean; indMin: int = 0; indMax: int = 0): GeomIntTheMultiLineOfWLApprox {.
    constructor, importcpp: "GeomInt_TheMultiLineOfWLApprox(@)",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc firstPoint*(this: GeomIntTheMultiLineOfWLApprox): int {.noSideEffect,
    importcpp: "FirstPoint", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc lastPoint*(this: GeomIntTheMultiLineOfWLApprox): int {.noSideEffect,
    importcpp: "LastPoint", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc nbP2d*(this: GeomIntTheMultiLineOfWLApprox): int {.noSideEffect,
    importcpp: "NbP2d", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc nbP3d*(this: GeomIntTheMultiLineOfWLApprox): int {.noSideEffect,
    importcpp: "NbP3d", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc whatStatus*(this: GeomIntTheMultiLineOfWLApprox): ApproxStatus {.noSideEffect,
    importcpp: "WhatStatus", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc value*(this: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt) {.noSideEffect, importcpp: "Value", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc value*(this: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
           tabPt2d: var TColgpArray1OfPnt2d) {.noSideEffect, importcpp: "Value",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc value*(this: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
           tabPt: var TColgpArray1OfPnt; tabPt2d: var TColgpArray1OfPnt2d) {.
    noSideEffect, importcpp: "Value", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc tangency*(this: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec): StandardBoolean {.noSideEffect,
    importcpp: "Tangency", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc tangency*(this: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
              tabV2d: var TColgpArray1OfVec2d): StandardBoolean {.noSideEffect,
    importcpp: "Tangency", header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc tangency*(this: GeomIntTheMultiLineOfWLApprox; mPointIndex: int;
              tabV: var TColgpArray1OfVec; tabV2d: var TColgpArray1OfVec2d): StandardBoolean {.
    noSideEffect, importcpp: "Tangency",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc makeMLBetween*(this: GeomIntTheMultiLineOfWLApprox; low: int; high: int;
                   nbPointsToInsert: int): GeomIntTheMultiLineOfWLApprox {.
    noSideEffect, importcpp: "MakeMLBetween",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc makeMLOneMorePoint*(this: GeomIntTheMultiLineOfWLApprox; low: int; high: int;
                        indbad: int; otherLine: var GeomIntTheMultiLineOfWLApprox): StandardBoolean {.
    noSideEffect, importcpp: "MakeMLOneMorePoint",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}
proc dump*(this: GeomIntTheMultiLineOfWLApprox) {.noSideEffect, importcpp: "Dump",
    header: "GeomInt_TheMultiLineOfWLApprox.hxx".}