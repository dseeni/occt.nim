##  Created on: 1997-02-06
##  Created by: Laurent BOURESCHE
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
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BRepBlendRstRstEvolRad* {.importcpp: "BRepBlend_RstRstEvolRad",
                           header: "BRepBlend_RstRstEvolRad.hxx", bycopy.} = object of BlendRstRstFunction


proc constructBRepBlendRstRstEvolRad*(surf1: Handle[Adaptor3dHSurface];
                                     rst1: Handle[Adaptor2dHCurve2d];
                                     surf2: Handle[Adaptor3dHSurface];
                                     rst2: Handle[Adaptor2dHCurve2d];
                                     cGuide: Handle[Adaptor3dHCurve];
                                     evol: Handle[LawFunction]): BRepBlendRstRstEvolRad {.
    constructor, importcpp: "BRepBlend_RstRstEvolRad(@)",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc nbVariables*(this: BRepBlendRstRstEvolRad): cint {.noSideEffect,
    importcpp: "NbVariables", header: "BRepBlend_RstRstEvolRad.hxx".}
proc nbEquations*(this: BRepBlendRstRstEvolRad): cint {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_RstRstEvolRad.hxx".}
proc value*(this: var BRepBlendRstRstEvolRad; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BRepBlend_RstRstEvolRad.hxx".}
proc derivatives*(this: var BRepBlendRstRstEvolRad; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BRepBlend_RstRstEvolRad.hxx".}
proc values*(this: var BRepBlendRstRstEvolRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; surfRef1: Handle[Adaptor3dHSurface];
         rstRef1: Handle[Adaptor2dHCurve2d]; surfRef2: Handle[Adaptor3dHSurface];
         rstRef2: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; param: cfloat) {.importcpp: "Set",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; first: cfloat; last: cfloat) {.
    importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendRstRstEvolRad; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, importcpp: "GetTolerance",
                               header: "BRepBlend_RstRstEvolRad.hxx".}
proc getBounds*(this: BRepBlendRstRstEvolRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BRepBlend_RstRstEvolRad.hxx".}
proc isSolution*(this: var BRepBlendRstRstEvolRad; sol: MathVector; tol: cfloat): bool {.
    importcpp: "IsSolution", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getMinimalDistance*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pointOnRst1*(this: BRepBlendRstRstEvolRad): Pnt {.noSideEffect,
    importcpp: "PointOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pointOnRst2*(this: BRepBlendRstRstEvolRad): Pnt {.noSideEffect,
    importcpp: "PointOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pnt2dOnRst1*(this: BRepBlendRstRstEvolRad): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc pnt2dOnRst2*(this: BRepBlendRstRstEvolRad): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc parameterOnRst1*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect,
    importcpp: "ParameterOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc parameterOnRst2*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect,
    importcpp: "ParameterOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc isTangencyPoint*(this: BRepBlendRstRstEvolRad): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangentOnRst1*(this: BRepBlendRstRstEvolRad): Vec {.noSideEffect,
    importcpp: "TangentOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangent2dOnRst1*(this: BRepBlendRstRstEvolRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst1", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangentOnRst2*(this: BRepBlendRstRstEvolRad): Vec {.noSideEffect,
    importcpp: "TangentOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc tangent2dOnRst2*(this: BRepBlendRstRstEvolRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc decroch*(this: BRepBlendRstRstEvolRad; sol: MathVector; nRst1: var Vec;
             tgRst1: var Vec; nRst2: var Vec; tgRst2: var Vec): BlendDecrochStatus {.
    noSideEffect, importcpp: "Decroch", header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; choix: cint) {.importcpp: "Set",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc set*(this: var BRepBlendRstRstEvolRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BRepBlend_RstRstEvolRad.hxx".}
proc centerCircleRst1Rst2*(this: BRepBlendRstRstEvolRad; ptRst1: Pnt; ptRst2: Pnt;
                          np: Vec; center: var Pnt; vdMed: var Vec): bool {.noSideEffect,
    importcpp: "CenterCircleRst1Rst2", header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; param: cfloat; u: cfloat; v: cfloat;
             pdeb: var cfloat; pfin: var cfloat; c: var Circ) {.importcpp: "Section",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc isRational*(this: BRepBlendRstRstEvolRad): bool {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getSectionSize*(this: BRepBlendRstRstEvolRad): cfloat {.noSideEffect,
    importcpp: "GetSectionSize", header: "BRepBlend_RstRstEvolRad.hxx".}
proc getMinimalWeight*(this: BRepBlendRstRstEvolRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BRepBlend_RstRstEvolRad.hxx".}
proc nbIntervals*(this: BRepBlendRstRstEvolRad; s: GeomAbsShape): cint {.noSideEffect,
    importcpp: "NbIntervals", header: "BRepBlend_RstRstEvolRad.hxx".}
proc intervals*(this: BRepBlendRstRstEvolRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "BRepBlend_RstRstEvolRad.hxx".}
proc getShape*(this: var BRepBlendRstRstEvolRad; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.importcpp: "GetShape",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc getTolerance*(this: BRepBlendRstRstEvolRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "BRepBlend_RstRstEvolRad.hxx".}
proc knots*(this: var BRepBlendRstRstEvolRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BRepBlend_RstRstEvolRad.hxx".}
proc mults*(this: var BRepBlendRstRstEvolRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc section*(this: var BRepBlendRstRstEvolRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "BRepBlend_RstRstEvolRad.hxx".}
proc resolution*(this: BRepBlendRstRstEvolRad; iC2d: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect,
    importcpp: "Resolution", header: "BRepBlend_RstRstEvolRad.hxx".}

























