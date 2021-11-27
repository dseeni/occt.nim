##  Created on: 1996-01-22
##  Created by: Laurent PAINNOT
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of math_Matrix"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  ExtremaFuncExtCS* {.importcpp: "Extrema_FuncExtCS",
                     header: "Extrema_FuncExtCS.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructExtremaFuncExtCS*(): ExtremaFuncExtCS {.constructor,
    importcpp: "Extrema_FuncExtCS(@)", header: "Extrema_FuncExtCS.hxx".}
proc constructExtremaFuncExtCS*(c: Adaptor3dCurve; s: Adaptor3dSurface): ExtremaFuncExtCS {.
    constructor, importcpp: "Extrema_FuncExtCS(@)", header: "Extrema_FuncExtCS.hxx".}
proc initialize*(this: var ExtremaFuncExtCS; c: Adaptor3dCurve; s: Adaptor3dSurface) {.
    importcpp: "Initialize", header: "Extrema_FuncExtCS.hxx".}
proc nbVariables*(this: ExtremaFuncExtCS): cint {.noSideEffect,
    importcpp: "NbVariables", header: "Extrema_FuncExtCS.hxx".}
proc nbEquations*(this: ExtremaFuncExtCS): cint {.noSideEffect,
    importcpp: "NbEquations", header: "Extrema_FuncExtCS.hxx".}
proc value*(this: var ExtremaFuncExtCS; uv: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Extrema_FuncExtCS.hxx".}
proc derivatives*(this: var ExtremaFuncExtCS; uv: MathVector; df: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "Extrema_FuncExtCS.hxx".}
proc values*(this: var ExtremaFuncExtCS; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.importcpp: "Values",
                                    header: "Extrema_FuncExtCS.hxx".}
proc getStateNumber*(this: var ExtremaFuncExtCS): cint {.importcpp: "GetStateNumber",
    header: "Extrema_FuncExtCS.hxx".}
proc nbExt*(this: ExtremaFuncExtCS): cint {.noSideEffect, importcpp: "NbExt",
                                        header: "Extrema_FuncExtCS.hxx".}
proc squareDistance*(this: ExtremaFuncExtCS; n: cint): cfloat {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_FuncExtCS.hxx".}
proc pointOnCurve*(this: ExtremaFuncExtCS; n: cint): ExtremaPOnCurv {.noSideEffect,
    importcpp: "PointOnCurve", header: "Extrema_FuncExtCS.hxx".}
proc pointOnSurface*(this: ExtremaFuncExtCS; n: cint): ExtremaPOnSurf {.noSideEffect,
    importcpp: "PointOnSurface", header: "Extrema_FuncExtCS.hxx".}
proc squareDistances*(this: var ExtremaFuncExtCS): var TColStdSequenceOfReal {.
    importcpp: "SquareDistances", header: "Extrema_FuncExtCS.hxx".}
proc pointsOnCurve*(this: var ExtremaFuncExtCS): var ExtremaSequenceOfPOnCurv {.
    importcpp: "PointsOnCurve", header: "Extrema_FuncExtCS.hxx".}
proc pointsOnSurf*(this: var ExtremaFuncExtCS): var ExtremaSequenceOfPOnSurf {.
    importcpp: "PointsOnSurf", header: "Extrema_FuncExtCS.hxx".}
























