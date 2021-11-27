##  Created on: 1997-09-22
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Adaptor2d_HCurve2d"
type
  ProjLibCompProjectedCurve* {.importcpp: "ProjLib_CompProjectedCurve",
                              header: "ProjLib_CompProjectedCurve.hxx", bycopy.} = object of Adaptor2dCurve2d ##
                                                                                                       ## !
                                                                                                       ## This
                                                                                                       ## method
                                                                                                       ## performs
                                                                                                       ## check
                                                                                                       ## possibility
                                                                                                       ## of
                                                                                                       ## optimization
                                                                                                       ## traps
                                                                                                       ## and
                                                                                                       ## tries
                                                                                                       ## to
                                                                                                       ## go
                                                                                                       ## out
                                                                                                       ## from
                                                                                                       ## them.
                                                                                                       ##
                                                                                                       ## @return
                                                                                                       ## thePoint
                                                                                                       ## -
                                                                                                       ## input
                                                                                                       ## /
                                                                                                       ## corrected
                                                                                                       ## point.


proc constructProjLibCompProjectedCurve*(): ProjLibCompProjectedCurve {.
    constructor, importcpp: "ProjLib_CompProjectedCurve(@)",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc constructProjLibCompProjectedCurve*(s: Handle[Adaptor3dHSurface];
                                        c: Handle[Adaptor3dHCurve]; tolU: cfloat;
                                        tolV: cfloat): ProjLibCompProjectedCurve {.
    constructor, importcpp: "ProjLib_CompProjectedCurve(@)",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc constructProjLibCompProjectedCurve*(s: Handle[Adaptor3dHSurface];
                                        c: Handle[Adaptor3dHCurve]; tolU: cfloat;
                                        tolV: cfloat; maxDist: cfloat): ProjLibCompProjectedCurve {.
    constructor, importcpp: "ProjLib_CompProjectedCurve(@)",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc init*(this: var ProjLibCompProjectedCurve) {.importcpp: "Init",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc load*(this: var ProjLibCompProjectedCurve; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "Load", header: "ProjLib_CompProjectedCurve.hxx".}
proc load*(this: var ProjLibCompProjectedCurve; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "Load", header: "ProjLib_CompProjectedCurve.hxx".}
proc getSurface*(this: ProjLibCompProjectedCurve): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "GetSurface", header: "ProjLib_CompProjectedCurve.hxx".}
proc getCurve*(this: ProjLibCompProjectedCurve): Handle[Adaptor3dHCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "ProjLib_CompProjectedCurve.hxx".}
proc getTolerance*(this: ProjLibCompProjectedCurve; tolU: var cfloat; tolV: var cfloat) {.
    noSideEffect, importcpp: "GetTolerance",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc nbCurves*(this: ProjLibCompProjectedCurve): cint {.noSideEffect,
    importcpp: "NbCurves", header: "ProjLib_CompProjectedCurve.hxx".}
proc bounds*(this: ProjLibCompProjectedCurve; index: cint; udeb: var cfloat;
            ufin: var cfloat) {.noSideEffect, importcpp: "Bounds",
                             header: "ProjLib_CompProjectedCurve.hxx".}
proc isSinglePnt*(this: ProjLibCompProjectedCurve; index: cint; p: var Pnt2d): bool {.
    noSideEffect, importcpp: "IsSinglePnt",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc isUIso*(this: ProjLibCompProjectedCurve; index: cint; u: var cfloat): bool {.
    noSideEffect, importcpp: "IsUIso", header: "ProjLib_CompProjectedCurve.hxx".}
proc isVIso*(this: ProjLibCompProjectedCurve; index: cint; v: var cfloat): bool {.
    noSideEffect, importcpp: "IsVIso", header: "ProjLib_CompProjectedCurve.hxx".}
proc value*(this: ProjLibCompProjectedCurve; u: cfloat): Pnt2d {.noSideEffect,
    importcpp: "Value", header: "ProjLib_CompProjectedCurve.hxx".}
proc d0*(this: ProjLibCompProjectedCurve; u: cfloat; p: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "ProjLib_CompProjectedCurve.hxx".}
proc d1*(this: ProjLibCompProjectedCurve; u: cfloat; p: var Pnt2d; v: var Vec2d) {.
    noSideEffect, importcpp: "D1", header: "ProjLib_CompProjectedCurve.hxx".}
proc d2*(this: ProjLibCompProjectedCurve; u: cfloat; p: var Pnt2d; v1: var Vec2d;
        v2: var Vec2d) {.noSideEffect, importcpp: "D2",
                      header: "ProjLib_CompProjectedCurve.hxx".}
proc dn*(this: ProjLibCompProjectedCurve; u: cfloat; n: cint): Vec2d {.noSideEffect,
    importcpp: "DN", header: "ProjLib_CompProjectedCurve.hxx".}
proc firstParameter*(this: ProjLibCompProjectedCurve): cfloat {.noSideEffect,
    importcpp: "FirstParameter", header: "ProjLib_CompProjectedCurve.hxx".}
proc lastParameter*(this: ProjLibCompProjectedCurve): cfloat {.noSideEffect,
    importcpp: "LastParameter", header: "ProjLib_CompProjectedCurve.hxx".}
proc nbIntervals*(this: ProjLibCompProjectedCurve; s: GeomAbsShape): cint {.
    noSideEffect, importcpp: "NbIntervals",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc trim*(this: ProjLibCompProjectedCurve; firstParam: cfloat; lastParam: cfloat;
          tol: cfloat): Handle[Adaptor2dHCurve2d] {.noSideEffect, importcpp: "Trim",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc intervals*(this: ProjLibCompProjectedCurve; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "ProjLib_CompProjectedCurve.hxx".}
proc maxDistance*(this: ProjLibCompProjectedCurve; index: cint): cfloat {.
    noSideEffect, importcpp: "MaxDistance",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc getSequence*(this: ProjLibCompProjectedCurve): Handle[
    ProjLibHSequenceOfHSequenceOfPnt] {.noSideEffect, importcpp: "GetSequence",
                                       header: "ProjLib_CompProjectedCurve.hxx".}
proc getType*(this: ProjLibCompProjectedCurve): GeomAbsCurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_CompProjectedCurve.hxx".}
























