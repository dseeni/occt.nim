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
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Circ"
discard "forward decl of Blend_Point"
type
  BRepBlendSurfRstConstRad* {.importcpp: "BRepBlend_SurfRstConstRad",
                             header: "BRepBlend_SurfRstConstRad.hxx", bycopy.} = object of BlendSurfRstFunction


proc newBRepBlendSurfRstConstRad*(surf: Handle[Adaptor3dHSurface];
                                 surfRst: Handle[Adaptor3dHSurface];
                                 rst: Handle[Adaptor2dHCurve2d];
                                 cGuide: Handle[Adaptor3dHCurve]): BRepBlendSurfRstConstRad {.
    cdecl, constructor, importcpp: "BRepBlend_SurfRstConstRad(@)", dynlib: tkfillet.}
proc nbVariables*(this: BRepBlendSurfRstConstRad): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkfillet.}
proc nbEquations*(this: BRepBlendSurfRstConstRad): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkfillet.}
proc value*(this: var BRepBlendSurfRstConstRad; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BRepBlendSurfRstConstRad; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc values*(this: var BRepBlendSurfRstConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkfillet.}
proc set*(this: var BRepBlendSurfRstConstRad; surfRef: Handle[Adaptor3dHSurface];
         rstRef: Handle[Adaptor2dHCurve2d]) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BRepBlendSurfRstConstRad; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BRepBlendSurfRstConstRad; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc getTolerance*(this: BRepBlendSurfRstConstRad; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               dynlib: tkfillet.}
proc getBounds*(this: BRepBlendSurfRstConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", dynlib: tkfillet.}
proc isSolution*(this: var BRepBlendSurfRstConstRad; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", dynlib: tkfillet.}
proc getMinimalDistance*(this: BRepBlendSurfRstConstRad): cfloat {.noSideEffect,
    cdecl, importcpp: "GetMinimalDistance", dynlib: tkfillet.}
proc pointOnS*(this: BRepBlendSurfRstConstRad): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS", dynlib: tkfillet.}
proc pointOnRst*(this: BRepBlendSurfRstConstRad): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnRst", dynlib: tkfillet.}
proc pnt2dOnS*(this: BRepBlendSurfRstConstRad): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnS", dynlib: tkfillet.}
proc pnt2dOnRst*(this: BRepBlendSurfRstConstRad): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Pnt2dOnRst", dynlib: tkfillet.}
proc parameterOnRst*(this: BRepBlendSurfRstConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnRst", dynlib: tkfillet.}
proc isTangencyPoint*(this: BRepBlendSurfRstConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnS*(this: BRepBlendSurfRstConstRad): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS", dynlib: tkfillet.}
proc tangent2dOnS*(this: BRepBlendSurfRstConstRad): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS", dynlib: tkfillet.}
proc tangentOnRst*(this: BRepBlendSurfRstConstRad): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnRst", dynlib: tkfillet.}
proc tangent2dOnRst*(this: BRepBlendSurfRstConstRad): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnRst", dynlib: tkfillet.}
proc decroch*(this: BRepBlendSurfRstConstRad; sol: MathVector; ns: var Vec; tgS: var Vec): bool {.
    noSideEffect, cdecl, importcpp: "Decroch", dynlib: tkfillet.}
proc set*(this: var BRepBlendSurfRstConstRad; radius: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc set*(this: var BRepBlendSurfRstConstRad; typeSection: BlendFuncSectionShape) {.
    cdecl, importcpp: "Set", dynlib: tkfillet.}
proc section*(this: var BRepBlendSurfRstConstRad; param: cfloat; u: cfloat; v: cfloat;
             w: cfloat; pdeb: var cfloat; pfin: var cfloat; c: var Circ) {.cdecl,
    importcpp: "Section", dynlib: tkfillet.}
proc isRational*(this: BRepBlendSurfRstConstRad): bool {.noSideEffect, cdecl,
    importcpp: "IsRational", dynlib: tkfillet.}
proc getSectionSize*(this: BRepBlendSurfRstConstRad): cfloat {.noSideEffect, cdecl,
    importcpp: "GetSectionSize", dynlib: tkfillet.}
proc getMinimalWeight*(this: BRepBlendSurfRstConstRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect, cdecl,
    importcpp: "GetMinimalWeight", dynlib: tkfillet.}
proc nbIntervals*(this: BRepBlendSurfRstConstRad; s: GeomAbsShape): cint {.
    noSideEffect, cdecl, importcpp: "NbIntervals", dynlib: tkfillet.}
proc intervals*(this: BRepBlendSurfRstConstRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, cdecl, importcpp: "Intervals",
                                dynlib: tkfillet.}
proc getShape*(this: var BRepBlendSurfRstConstRad; nbPoles: var cint;
              nbKnots: var cint; degree: var cint; nbPoles2d: var cint) {.cdecl,
    importcpp: "GetShape", dynlib: tkfillet.}
proc getTolerance*(this: BRepBlendSurfRstConstRad; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc knots*(this: var BRepBlendSurfRstConstRad; tKnots: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Knots", dynlib: tkfillet.}
proc mults*(this: var BRepBlendSurfRstConstRad; tMults: var TColStdArray1OfInteger) {.
    cdecl, importcpp: "Mults", dynlib: tkfillet.}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc resolution*(this: BRepBlendSurfRstConstRad; iC2d: cint; tol: cfloat;
                tolU: var cfloat; tolV: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Resolution", dynlib: tkfillet.}