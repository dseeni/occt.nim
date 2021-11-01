##  Created on: 1997-12-02
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

discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Mat"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_CurveAndTrihedron"
type
  HandleGeomFillCurveAndTrihedron* = Handle[GeomFillCurveAndTrihedron]

## ! Define location law with an TrihedronLaw and an
## ! curve
## ! Definition Location is :
## ! transformed  section   coordinates  in  (Curve(v)),
## ! (Normal(v),   BiNormal(v), Tangente(v))) systeme are
## ! the  same like section  shape coordinates in
## ! (O,(OX, OY, OZ)) systeme.

type
  GeomFillCurveAndTrihedron* {.importcpp: "GeomFill_CurveAndTrihedron",
                              header: "GeomFill_CurveAndTrihedron.hxx", bycopy.} = object of GeomFillLocationLaw


proc newGeomFillCurveAndTrihedron*(trihedron: Handle[GeomFillTrihedronLaw]): GeomFillCurveAndTrihedron {.
    cdecl, constructor, importcpp: "GeomFill_CurveAndTrihedron(@)",
    dynlib: tkgeomalgo.}
proc setCurve*(this: var GeomFillCurveAndTrihedron; c: Handle[Adaptor3dHCurve]) {.
    cdecl, importcpp: "SetCurve", dynlib: tkgeomalgo.}
proc getCurve*(this: GeomFillCurveAndTrihedron): Handle[Adaptor3dHCurve] {.
    noSideEffect, cdecl, importcpp: "GetCurve", dynlib: tkgeomalgo.}
proc setTrsf*(this: var GeomFillCurveAndTrihedron; transfo: Mat) {.cdecl,
    importcpp: "SetTrsf", dynlib: tkgeomalgo.}
proc copy*(this: GeomFillCurveAndTrihedron): Handle[GeomFillLocationLaw] {.
    noSideEffect, cdecl, importcpp: "Copy", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var Mat; v: var Vec): bool {.
    cdecl, importcpp: "D0", dynlib: tkgeomalgo.}
proc d0*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var Mat; v: var Vec;
        poles2d: var TColgpArray1OfPnt2d): bool {.cdecl, importcpp: "D0",
    dynlib: tkgeomalgo.}
proc d1*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D1",
    dynlib: tkgeomalgo.}
proc d2*(this: var GeomFillCurveAndTrihedron; param: cfloat; m: var Mat; v: var Vec;
        dm: var Mat; dv: var Vec; d2m: var Mat; d2v: var Vec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d): bool {.cdecl, importcpp: "D2",
    dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillCurveAndTrihedron; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillCurveAndTrihedron; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkgeomalgo.}
proc setInterval*(this: var GeomFillCurveAndTrihedron; first: cfloat; last: cfloat) {.
    cdecl, importcpp: "SetInterval", dynlib: tkgeomalgo.}
proc getInterval*(this: GeomFillCurveAndTrihedron; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetInterval", dynlib: tkgeomalgo.}
proc getDomain*(this: GeomFillCurveAndTrihedron; first: var cfloat; last: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetDomain", dynlib: tkgeomalgo.}
proc getMaximalNorm*(this: var GeomFillCurveAndTrihedron): cfloat {.cdecl,
    importcpp: "GetMaximalNorm", dynlib: tkgeomalgo.}
proc getAverageLaw*(this: var GeomFillCurveAndTrihedron; am: var Mat; av: var Vec) {.
    cdecl, importcpp: "GetAverageLaw", dynlib: tkgeomalgo.}
proc isTranslation*(this: GeomFillCurveAndTrihedron; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsTranslation", dynlib: tkgeomalgo.}
proc isRotation*(this: GeomFillCurveAndTrihedron; error: var cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsRotation", dynlib: tkgeomalgo.}
proc rotation*(this: GeomFillCurveAndTrihedron; center: var Pnt) {.noSideEffect, cdecl,
    importcpp: "Rotation", dynlib: tkgeomalgo.}