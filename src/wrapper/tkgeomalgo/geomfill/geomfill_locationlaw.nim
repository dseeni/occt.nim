##  Created on: 1997-11-20
##  Created by: Philippe MANGIN
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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_LocationLaw"
type
  HandleGeomFillLocationLaw* = Handle[GeomFillLocationLaw]

## ! To define location  law in Sweeping location is --
## ! defined   by an  Matrix  M and  an Vector  V,  and
## ! transform an point P in MP+V.

type
  GeomFillLocationLaw* {.importcpp: "GeomFill_LocationLaw",
                        header: "GeomFill_LocationLaw.hxx", bycopy.} = object of StandardTransient


proc setCurve*(this: var GeomFillLocationLaw; c: Handle[Adaptor3dHCurve]) {.cdecl,
    importcpp: "SetCurve", header: "GeomFill_LocationLaw.hxx".}
proc getCurve*(this: GeomFillLocationLaw): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "GetCurve", header: "GeomFill_LocationLaw.hxx".}
proc setTrsf*(this: var GeomFillLocationLaw; transfo: Mat) {.cdecl,
    importcpp: "SetTrsf", header: "GeomFill_LocationLaw.hxx".}
proc copy*(this: GeomFillLocationLaw): Handle[GeomFillLocationLaw] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "GeomFill_LocationLaw.hxx".}
proc d0*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec): bool {.cdecl,
    importcpp: "D0", header: "GeomFill_LocationLaw.hxx".}
proc d0*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    header: "GeomFill_LocationLaw.hxx".}
proc d1*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec; dm: var Mat;
        dv: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    header: "GeomFill_LocationLaw.hxx".}
proc d2*(this: var GeomFillLocationLaw; param: cfloat; m: var Mat; v: var Vec; dm: var Mat;
        dv: var Vec; d2m: var Mat; d2v: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d): bool {.
    cdecl, importcpp: "D2", header: "GeomFill_LocationLaw.hxx".}
proc nb2dCurves*(this: GeomFillLocationLaw): cint {.noSideEffect, cdecl,
    importcpp: "Nb2dCurves", header: "GeomFill_LocationLaw.hxx".}
proc hasFirstRestriction*(this: GeomFillLocationLaw): bool {.noSideEffect, cdecl,
    importcpp: "HasFirstRestriction", header: "GeomFill_LocationLaw.hxx".}
proc hasLastRestriction*(this: GeomFillLocationLaw): bool {.noSideEffect, cdecl,
    importcpp: "HasLastRestriction", header: "GeomFill_LocationLaw.hxx".}
proc traceNumber*(this: GeomFillLocationLaw): cint {.noSideEffect, cdecl,
    importcpp: "TraceNumber", header: "GeomFill_LocationLaw.hxx".}
proc errorStatus*(this: GeomFillLocationLaw): GeomFillPipeError {.noSideEffect,
    cdecl, importcpp: "ErrorStatus", header: "GeomFill_LocationLaw.hxx".}
proc nbIntervals*(this: GeomFillLocationLaw; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", header: "GeomFill_LocationLaw.hxx".}
proc intervals*(this: GeomFillLocationLaw; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", header: "GeomFill_LocationLaw.hxx".}
proc setInterval*(this: var GeomFillLocationLaw; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetInterval", header: "GeomFill_LocationLaw.hxx".}
proc getInterval*(this: GeomFillLocationLaw; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", header: "GeomFill_LocationLaw.hxx".}
proc getDomain*(this: GeomFillLocationLaw; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", header: "GeomFill_LocationLaw.hxx".}
proc resolution*(this: GeomFillLocationLaw; index: cint; tol: cfloat; tolU: var cfloat;
                tolV: var cfloat) {.noSideEffect, cdecl, importcpp: "Resolution",
                                 header: "GeomFill_LocationLaw.hxx".}
proc setTolerance*(this: var GeomFillLocationLaw; tol3d: cfloat; tol2d: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "GeomFill_LocationLaw.hxx".}
proc getMaximalNorm*(this: var GeomFillLocationLaw): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", header: "GeomFill_LocationLaw.hxx".}
proc getAverageLaw*(this: var GeomFillLocationLaw; am: var Mat; av: var Vec) {.cdecl,
    importcpp: "GetAverageLaw", header: "GeomFill_LocationLaw.hxx".}
proc isTranslation*(this: GeomFillLocationLaw; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsTranslation", header: "GeomFill_LocationLaw.hxx".}
proc isRotation*(this: GeomFillLocationLaw; error: var cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsRotation", header: "GeomFill_LocationLaw.hxx".}
proc rotation*(this: GeomFillLocationLaw; center: var Pnt) {.noSideEffect, cdecl,
    importcpp: "Rotation", header: "GeomFill_LocationLaw.hxx".}