##  Created on: 1998-02-26
##  Created by: Roman BORISOV
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomFillSnglrFunc* {.importcpp: "GeomFill_SnglrFunc",
                      header: "GeomFill_SnglrFunc.hxx", bycopy.} = object of Adaptor3dCurve


proc newGeomFillSnglrFunc*(hc: Handle[Adaptor3dHCurve]): GeomFillSnglrFunc {.cdecl,
    constructor, importcpp: "GeomFill_SnglrFunc(@)", dynlib: tkgeomalgo.}
proc setRatio*(this: var GeomFillSnglrFunc; ratio: cfloat) {.cdecl,
    importcpp: "SetRatio", dynlib: tkgeomalgo.}
proc firstParameter*(this: GeomFillSnglrFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkgeomalgo.}
proc lastParameter*(this: GeomFillSnglrFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkgeomalgo.}
proc nbIntervals*(this: GeomFillSnglrFunc; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbIntervals", dynlib: tkgeomalgo.}
proc intervals*(this: GeomFillSnglrFunc; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "Intervals", dynlib: tkgeomalgo.}
proc value*(this: GeomFillSnglrFunc; u: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeomalgo.}
proc isPeriodic*(this: GeomFillSnglrFunc): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", dynlib: tkgeomalgo.}
proc period*(this: GeomFillSnglrFunc): cfloat {.noSideEffect, cdecl,
    importcpp: "Period", dynlib: tkgeomalgo.}
proc d0*(this: GeomFillSnglrFunc; u: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkgeomalgo.}
proc d1*(this: GeomFillSnglrFunc; u: cfloat; p: var Pnt; v: var Vec) {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkgeomalgo.}
proc d2*(this: GeomFillSnglrFunc; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    noSideEffect, cdecl, importcpp: "D2", dynlib: tkgeomalgo.}
proc d3*(this: GeomFillSnglrFunc; u: cfloat; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, cdecl, importcpp: "D3", dynlib: tkgeomalgo.}
proc dn*(this: GeomFillSnglrFunc; u: cfloat; n: cint): Vec {.noSideEffect, cdecl,
    importcpp: "DN", dynlib: tkgeomalgo.}
proc resolution*(this: GeomFillSnglrFunc; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkgeomalgo.}
proc getType*(this: GeomFillSnglrFunc): GeomAbsCurveType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkgeomalgo.}