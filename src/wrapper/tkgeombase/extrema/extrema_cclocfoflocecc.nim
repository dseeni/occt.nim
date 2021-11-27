##  Created on: 1991-02-26
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of math_Matrix"
type
  ExtremaCCLocFOfLocECC* {.importcpp: "Extrema_CCLocFOfLocECC",
                          header: "Extrema_CCLocFOfLocECC.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc newExtremaCCLocFOfLocECC*(thetol: cfloat = 1.0e-10): ExtremaCCLocFOfLocECC {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC(@)", header: "Extrema_CCLocFOfLocECC.hxx".}
proc newExtremaCCLocFOfLocECC*(c1: Adaptor3dCurve; c2: Adaptor3dCurve;
                              thetol: cfloat = 1.0e-10): ExtremaCCLocFOfLocECC {.
    cdecl, constructor, importcpp: "Extrema_CCLocFOfLocECC(@)", header: "Extrema_CCLocFOfLocECC.hxx".}
proc setCurve*(this: var ExtremaCCLocFOfLocECC; theRank: cint; c1: Adaptor3dCurve) {.
    cdecl, importcpp: "SetCurve", header: "Extrema_CCLocFOfLocECC.hxx".}
proc setTolerance*(this: var ExtremaCCLocFOfLocECC; theTol: cfloat) {.cdecl,
    importcpp: "SetTolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc nbVariables*(this: ExtremaCCLocFOfLocECC): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", header: "Extrema_CCLocFOfLocECC.hxx".}
proc nbEquations*(this: ExtremaCCLocFOfLocECC): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "Extrema_CCLocFOfLocECC.hxx".}
proc value*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "Extrema_CCLocFOfLocECC.hxx".}
proc derivatives*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; df: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "Extrema_CCLocFOfLocECC.hxx".}
proc values*(this: var ExtremaCCLocFOfLocECC; uv: MathVector; f: var MathVector;
            df: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "Extrema_CCLocFOfLocECC.hxx".}
proc getStateNumber*(this: var ExtremaCCLocFOfLocECC): cint {.cdecl,
    importcpp: "GetStateNumber", header: "Extrema_CCLocFOfLocECC.hxx".}
proc nbExt*(this: ExtremaCCLocFOfLocECC): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_CCLocFOfLocECC.hxx".}
proc squareDistance*(this: ExtremaCCLocFOfLocECC; n: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc points*(this: ExtremaCCLocFOfLocECC; n: cint; p1: var ExtremaPOnCurv;
            p2: var ExtremaPOnCurv) {.noSideEffect, cdecl, importcpp: "Points",
                                   header: "Extrema_CCLocFOfLocECC.hxx".}
proc curvePtr*(this: ExtremaCCLocFOfLocECC; theRank: cint): pointer {.noSideEffect,
    cdecl, importcpp: "CurvePtr", header: "Extrema_CCLocFOfLocECC.hxx".}
proc tolerance*(this: ExtremaCCLocFOfLocECC): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
proc subIntervalInitialize*(this: var ExtremaCCLocFOfLocECC; theUfirst: MathVector;
                           theUlast: MathVector) {.cdecl,
    importcpp: "SubIntervalInitialize", header: "Extrema_CCLocFOfLocECC.hxx".}
proc searchOfTolerance*(this: var ExtremaCCLocFOfLocECC; c: pointer): cfloat {.cdecl,
    importcpp: "SearchOfTolerance", header: "Extrema_CCLocFOfLocECC.hxx".}
##  #define Curve1 Adaptor3d_Curve
##  #define Curve1_hxx <Adaptor3d_Curve.hxx>
##  #define Tool1 Extrema_CurveTool
##  #define Tool1_hxx <Extrema_CurveTool.hxx>
##  #define Curve2 Adaptor3d_Curve
##  #define Curve2_hxx <Adaptor3d_Curve.hxx>
##  #define Tool2 Extrema_CurveTool
##  #define Tool2_hxx <Extrema_CurveTool.hxx>
##  #define POnC Extrema_POnCurv
##  #define POnC_hxx <Extrema_POnCurv.hxx>
##  #define Pnt gp_Pnt
##  #define Pnt_hxx <gp_Pnt.hxx>
##  #define Vec gp_Vec
##  #define Vec_hxx <gp_Vec.hxx>
##  #define Extrema_SeqPOnC Extrema_SequenceOfPOnCurv
##  #define Extrema_SeqPOnC_hxx <Extrema_SequenceOfPOnCurv.hxx>
##  #define Extrema_FuncExtCC Extrema_CCLocFOfLocECC
##  #define Extrema_FuncExtCC_hxx <Extrema_CCLocFOfLocECC.hxx>