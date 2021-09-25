##  Created on: 1998-06-02
##  Created by: Philippe NOUAILLE
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Lin"
discard "forward decl of Blend_Point"
type
  BlendFuncChAsym* {.importcpp: "BlendFunc_ChAsym", header: "BlendFunc_ChAsym.hxx",
                    bycopy.} = object of BlendFunction


proc constructBlendFuncChAsym*(s1: Handle[Adaptor3dHSurface];
                              s2: Handle[Adaptor3dHSurface];
                              c: Handle[Adaptor3dHCurve]): BlendFuncChAsym {.
    constructor, importcpp: "BlendFunc_ChAsym(@)", header: "BlendFunc_ChAsym.hxx".}
proc nbEquations*(this: BlendFuncChAsym): int {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; param: float) {.importcpp: "Set",
    header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; first: float; last: float) {.importcpp: "Set",
    header: "BlendFunc_ChAsym.hxx".}
proc getTolerance*(this: BlendFuncChAsym; tolerance: var MathVector; tol: float) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_ChAsym.hxx".}
proc getBounds*(this: BlendFuncChAsym; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_ChAsym.hxx".}
proc isSolution*(this: var BlendFuncChAsym; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "BlendFunc_ChAsym.hxx".}
proc getMinimalDistance*(this: BlendFuncChAsym): float {.noSideEffect,
    importcpp: "GetMinimalDistance", header: "BlendFunc_ChAsym.hxx".}
proc computeValues*(this: var BlendFuncChAsym; x: MathVector; degF: int; degL: int): bool {.
    importcpp: "ComputeValues", header: "BlendFunc_ChAsym.hxx".}
proc value*(this: var BlendFuncChAsym; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_ChAsym.hxx".}
proc derivatives*(this: var BlendFuncChAsym; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_ChAsym.hxx".}
proc values*(this: var BlendFuncChAsym; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BlendFunc_ChAsym.hxx".}
proc pointOnS1*(this: BlendFuncChAsym): Pnt {.noSideEffect, importcpp: "PointOnS1",
    header: "BlendFunc_ChAsym.hxx".}
proc pointOnS2*(this: BlendFuncChAsym): Pnt {.noSideEffect, importcpp: "PointOnS2",
    header: "BlendFunc_ChAsym.hxx".}
proc isTangencyPoint*(this: BlendFuncChAsym): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_ChAsym.hxx".}
proc tangentOnS1*(this: BlendFuncChAsym): Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "BlendFunc_ChAsym.hxx".}
proc tangent2dOnS1*(this: BlendFuncChAsym): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "BlendFunc_ChAsym.hxx".}
proc tangentOnS2*(this: BlendFuncChAsym): Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "BlendFunc_ChAsym.hxx".}
proc tangent2dOnS2*(this: BlendFuncChAsym): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "BlendFunc_ChAsym.hxx".}
proc twistOnS1*(this: BlendFuncChAsym): bool {.noSideEffect, importcpp: "TwistOnS1",
    header: "BlendFunc_ChAsym.hxx".}
proc twistOnS2*(this: BlendFuncChAsym): bool {.noSideEffect, importcpp: "TwistOnS2",
    header: "BlendFunc_ChAsym.hxx".}
proc tangent*(this: BlendFuncChAsym; u1: float; v1: float; u2: float; v2: float;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; param: float; u1: float; v1: float; u2: float;
             v2: float; pdeb: var float; pfin: var float; c: var Lin) {.
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc isRational*(this: BlendFuncChAsym): bool {.noSideEffect,
    importcpp: "IsRational", header: "BlendFunc_ChAsym.hxx".}
proc getSectionSize*(this: BlendFuncChAsym): float {.noSideEffect,
    importcpp: "GetSectionSize", header: "BlendFunc_ChAsym.hxx".}
proc getMinimalWeight*(this: BlendFuncChAsym; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "BlendFunc_ChAsym.hxx".}
proc nbIntervals*(this: BlendFuncChAsym; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "BlendFunc_ChAsym.hxx".}
proc intervals*(this: BlendFuncChAsym; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "BlendFunc_ChAsym.hxx".}
proc getShape*(this: var BlendFuncChAsym; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "BlendFunc_ChAsym.hxx".}
proc getTolerance*(this: BlendFuncChAsym; boundTol: float; surfTol: float;
                  angleTol: float; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, importcpp: "GetTolerance", header: "BlendFunc_ChAsym.hxx".}
proc knots*(this: var BlendFuncChAsym; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BlendFunc_ChAsym.hxx".}
proc mults*(this: var BlendFuncChAsym; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.importcpp: "Section",
    header: "BlendFunc_ChAsym.hxx".}
proc section*(this: var BlendFuncChAsym; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "BlendFunc_ChAsym.hxx".}
proc resolution*(this: BlendFuncChAsym; iC2d: int; tol: float; tolU: var float;
                tolV: var float) {.noSideEffect, importcpp: "Resolution",
                                header: "BlendFunc_ChAsym.hxx".}
proc set*(this: var BlendFuncChAsym; dist1: float; angle: float; choix: int) {.
    importcpp: "Set", header: "BlendFunc_ChAsym.hxx".}
