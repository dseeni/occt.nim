##  Created on: 1993-09-13
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
type
  BlendCSFunction* {.importcpp: "Blend_CSFunction", header: "Blend_CSFunction.hxx",
                    bycopy.} = object of BlendAppFunction ## ! Returns 3 (default value). Can be redefined.


proc nbVariables*(this: BlendCSFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkfillet.}
proc nbEquations*(this: BlendCSFunction): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkfillet.}
proc value*(this: var BlendCSFunction; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BlendCSFunction; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc values*(this: var BlendCSFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkfillet.}
proc set*(this: var BlendCSFunction; param: cfloat) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc set*(this: var BlendCSFunction; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc getTolerance*(this: BlendCSFunction; tolerance: var MathVector; tol: cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc getBounds*(this: BlendCSFunction; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", dynlib: tkfillet.}
proc isSolution*(this: var BlendCSFunction; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", dynlib: tkfillet.}
proc getMinimalDistance*(this: BlendCSFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "GetMinimalDistance", dynlib: tkfillet.}
proc pnt1*(this: BlendCSFunction): Pnt {.noSideEffect, cdecl, importcpp: "Pnt1",
                                     dynlib: tkfillet.}
proc pnt2*(this: BlendCSFunction): Pnt {.noSideEffect, cdecl, importcpp: "Pnt2",
                                     dynlib: tkfillet.}
proc pointOnS*(this: BlendCSFunction): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnS", dynlib: tkfillet.}
proc pointOnC*(this: BlendCSFunction): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnC", dynlib: tkfillet.}
proc pnt2d*(this: BlendCSFunction): Pnt2d {.noSideEffect, cdecl, importcpp: "Pnt2d",
                                        dynlib: tkfillet.}
proc parameterOnC*(this: BlendCSFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC", dynlib: tkfillet.}
proc isTangencyPoint*(this: BlendCSFunction): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnS*(this: BlendCSFunction): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS", dynlib: tkfillet.}
proc tangent2d*(this: BlendCSFunction): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2d", dynlib: tkfillet.}
proc tangentOnC*(this: BlendCSFunction): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnC", dynlib: tkfillet.}
proc tangent*(this: BlendCSFunction; u: cfloat; v: cfloat; tgS: var Vec; normS: var Vec) {.
    noSideEffect, cdecl, importcpp: "Tangent", dynlib: tkfillet.}
proc getShape*(this: var BlendCSFunction; nbPoles: var cint; nbKnots: var cint;
              degree: var cint; nbPoles2d: var cint) {.cdecl, importcpp: "GetShape",
    dynlib: tkfillet.}
proc getTolerance*(this: BlendCSFunction; boundTol: cfloat; surfTol: cfloat;
                  angleTol: cfloat; tol3d: var MathVector; tol1D: var MathVector) {.
    noSideEffect, cdecl, importcpp: "GetTolerance", dynlib: tkfillet.}
proc knots*(this: var BlendCSFunction; tKnots: var TColStdArray1OfReal) {.cdecl,
    importcpp: "Knots", dynlib: tkfillet.}
proc mults*(this: var BlendCSFunction; tMults: var TColStdArray1OfInteger) {.cdecl,
    importcpp: "Mults", dynlib: tkfillet.}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
             dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal): bool {.cdecl, importcpp: "Section",
    dynlib: tkfillet.}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}
proc section*(this: var BlendCSFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    cdecl, importcpp: "Section", dynlib: tkfillet.}