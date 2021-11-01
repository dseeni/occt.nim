##  Created on: 1998-04-27
##  Created by: Stephanie HUMEAU
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
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_Tensor"
type
  GeomFillFunctionDraft* {.importcpp: "GeomFill_FunctionDraft",
                          header: "GeomFill_FunctionDraft.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc newGeomFillFunctionDraft*(s: Handle[Adaptor3dHSurface];
                              c: Handle[Adaptor3dHCurve]): GeomFillFunctionDraft {.
    cdecl, constructor, importcpp: "GeomFill_FunctionDraft(@)", dynlib: tkgeomalgo.}
proc nbVariables*(this: GeomFillFunctionDraft): cint {.noSideEffect, cdecl,
    importcpp: "NbVariables", dynlib: tkgeomalgo.}
proc nbEquations*(this: GeomFillFunctionDraft): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", dynlib: tkgeomalgo.}
proc value*(this: var GeomFillFunctionDraft; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", dynlib: tkgeomalgo.}
proc derivatives*(this: var GeomFillFunctionDraft; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkgeomalgo.}
proc values*(this: var GeomFillFunctionDraft; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", dynlib: tkgeomalgo.}
proc derivT*(this: var GeomFillFunctionDraft; c: Handle[Adaptor3dHCurve];
            param: cfloat; w: cfloat; dN: Vec; teta: cfloat; f: var MathVector): bool {.
    cdecl, importcpp: "DerivT", dynlib: tkgeomalgo.}
proc deriv2T*(this: var GeomFillFunctionDraft; c: Handle[Adaptor3dHCurve];
             param: cfloat; w: cfloat; d2N: Vec; teta: cfloat; f: var MathVector): bool {.
    cdecl, importcpp: "Deriv2T", dynlib: tkgeomalgo.}
proc derivTX*(this: var GeomFillFunctionDraft; dN: Vec; teta: cfloat; d: var MathMatrix): bool {.
    cdecl, importcpp: "DerivTX", dynlib: tkgeomalgo.}
proc deriv2X*(this: var GeomFillFunctionDraft; x: MathVector; t: var GeomFillTensor): bool {.
    cdecl, importcpp: "Deriv2X", dynlib: tkgeomalgo.}