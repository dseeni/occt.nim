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


proc `new`*(this: var BRepBlendSurfRstConstRad; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfRstConstRad::operator new",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc `delete`*(this: var BRepBlendSurfRstConstRad; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfRstConstRad::operator delete",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc `new[]`*(this: var BRepBlendSurfRstConstRad; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfRstConstRad::operator new[]",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc `delete[]`*(this: var BRepBlendSurfRstConstRad; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfRstConstRad::operator delete[]",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc `new`*(this: var BRepBlendSurfRstConstRad; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBlend_SurfRstConstRad::operator new",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc `delete`*(this: var BRepBlendSurfRstConstRad; a2: pointer; a3: pointer) {.
    importcpp: "BRepBlend_SurfRstConstRad::operator delete",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc constructBRepBlendSurfRstConstRad*(surf: Handle[Adaptor3dHSurface];
                                       surfRst: Handle[Adaptor3dHSurface];
                                       rst: Handle[Adaptor2dHCurve2d];
                                       cGuide: Handle[Adaptor3dHCurve]): BRepBlendSurfRstConstRad {.
    constructor, importcpp: "BRepBlend_SurfRstConstRad(@)",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc nbVariables*(this: BRepBlendSurfRstConstRad): int {.noSideEffect,
    importcpp: "NbVariables", header: "BRepBlend_SurfRstConstRad.hxx".}
proc nbEquations*(this: BRepBlendSurfRstConstRad): int {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_SurfRstConstRad.hxx".}
proc value*(this: var BRepBlendSurfRstConstRad; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BRepBlend_SurfRstConstRad.hxx".}
proc derivatives*(this: var BRepBlendSurfRstConstRad; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BRepBlend_SurfRstConstRad.hxx".}
proc values*(this: var BRepBlendSurfRstConstRad; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; surfRef: Handle[Adaptor3dHSurface];
         rstRef: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; param: StandardReal) {.importcpp: "Set",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; first: StandardReal; last: StandardReal) {.
    importcpp: "Set", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstConstRad; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BRepBlend_SurfRstConstRad.hxx".}
proc getBounds*(this: BRepBlendSurfRstConstRad; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BRepBlend_SurfRstConstRad.hxx".}
proc isSolution*(this: var BRepBlendSurfRstConstRad; sol: MathVector;
                tol: StandardReal): StandardBoolean {.importcpp: "IsSolution",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc getMinimalDistance*(this: BRepBlendSurfRstConstRad): StandardReal {.
    noSideEffect, importcpp: "GetMinimalDistance",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc pointOnS*(this: BRepBlendSurfRstConstRad): Pnt {.noSideEffect,
    importcpp: "PointOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc pointOnRst*(this: BRepBlendSurfRstConstRad): Pnt {.noSideEffect,
    importcpp: "PointOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc pnt2dOnS*(this: BRepBlendSurfRstConstRad): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc pnt2dOnRst*(this: BRepBlendSurfRstConstRad): Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc parameterOnRst*(this: BRepBlendSurfRstConstRad): StandardReal {.noSideEffect,
    importcpp: "ParameterOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc isTangencyPoint*(this: BRepBlendSurfRstConstRad): StandardBoolean {.
    noSideEffect, importcpp: "IsTangencyPoint",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangentOnS*(this: BRepBlendSurfRstConstRad): Vec {.noSideEffect,
    importcpp: "TangentOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangent2dOnS*(this: BRepBlendSurfRstConstRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS", header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangentOnRst*(this: BRepBlendSurfRstConstRad): Vec {.noSideEffect,
    importcpp: "TangentOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc tangent2dOnRst*(this: BRepBlendSurfRstConstRad): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnRst", header: "BRepBlend_SurfRstConstRad.hxx".}
proc decroch*(this: BRepBlendSurfRstConstRad; sol: MathVector; ns: var Vec; tgS: var Vec): StandardBoolean {.
    noSideEffect, importcpp: "Decroch", header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; radius: StandardReal; choix: int) {.
    importcpp: "Set", header: "BRepBlend_SurfRstConstRad.hxx".}
proc set*(this: var BRepBlendSurfRstConstRad; typeSection: BlendFuncSectionShape) {.
    importcpp: "Set", header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; param: StandardReal;
             u: StandardReal; v: StandardReal; w: StandardReal;
             pdeb: var StandardReal; pfin: var StandardReal; c: var Circ) {.
    importcpp: "Section", header: "BRepBlend_SurfRstConstRad.hxx".}
proc isRational*(this: BRepBlendSurfRstConstRad): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getSectionSize*(this: BRepBlendSurfRstConstRad): StandardReal {.noSideEffect,
    importcpp: "GetSectionSize", header: "BRepBlend_SurfRstConstRad.hxx".}
proc getMinimalWeight*(this: BRepBlendSurfRstConstRad;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "BRepBlend_SurfRstConstRad.hxx".}
proc nbIntervals*(this: BRepBlendSurfRstConstRad; s: GeomAbsShape): int {.
    noSideEffect, importcpp: "NbIntervals", header: "BRepBlend_SurfRstConstRad.hxx".}
proc intervals*(this: BRepBlendSurfRstConstRad; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "BRepBlend_SurfRstConstRad.hxx".}
proc getShape*(this: var BRepBlendSurfRstConstRad; nbPoles: var int; nbKnots: var int;
              degree: var int; nbPoles2d: var int) {.importcpp: "GetShape",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc getTolerance*(this: BRepBlendSurfRstConstRad; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var MathVector; tol1D: var MathVector) {.noSideEffect,
    importcpp: "GetTolerance", header: "BRepBlend_SurfRstConstRad.hxx".}
proc knots*(this: var BRepBlendSurfRstConstRad; tKnots: var TColStdArray1OfReal) {.
    importcpp: "Knots", header: "BRepBlend_SurfRstConstRad.hxx".}
proc mults*(this: var BRepBlendSurfRstConstRad; tMults: var TColStdArray1OfInteger) {.
    importcpp: "Mults", header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; d2Poles2d: var TColgpArray1OfVec2d;
             weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal;
             d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "Section", header: "BRepBlend_SurfRstConstRad.hxx".}
proc section*(this: var BRepBlendSurfRstConstRad; p: BlendPoint;
             poles: var TColgpArray1OfPnt; poles2d: var TColgpArray1OfPnt2d;
             weigths: var TColStdArray1OfReal) {.importcpp: "Section",
    header: "BRepBlend_SurfRstConstRad.hxx".}
proc resolution*(this: BRepBlendSurfRstConstRad; iC2d: int; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "BRepBlend_SurfRstConstRad.hxx".}