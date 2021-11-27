##  Created on: 1997-07-29
##  Created by: Jerome LEMONIER
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
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  BRepBlendSurfPointEvolRadInv* {.importcpp: "BRepBlend_SurfPointEvolRadInv",
                                 header: "BRepBlend_SurfPointEvolRadInv.hxx",
                                 bycopy.} = object of BlendSurfPointFuncInv


proc `new`*(this: var BRepBlendSurfPointEvolRadInv; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfPointEvolRadInv::operator new",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc `delete`*(this: var BRepBlendSurfPointEvolRadInv; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfPointEvolRadInv::operator delete",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc `new[]`*(this: var BRepBlendSurfPointEvolRadInv; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfPointEvolRadInv::operator new[]",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc `delete[]`*(this: var BRepBlendSurfPointEvolRadInv; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfPointEvolRadInv::operator delete[]",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc `new`*(this: var BRepBlendSurfPointEvolRadInv; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBlend_SurfPointEvolRadInv::operator new",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc `delete`*(this: var BRepBlendSurfPointEvolRadInv; a2: pointer; a3: pointer) {.
    importcpp: "BRepBlend_SurfPointEvolRadInv::operator delete",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc constructBRepBlendSurfPointEvolRadInv*(s: Handle[Adaptor3dHSurface];
    c: Handle[Adaptor3dHCurve]; evol: Handle[LawFunction]): BRepBlendSurfPointEvolRadInv {.
    constructor, importcpp: "BRepBlend_SurfPointEvolRadInv(@)",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointEvolRadInv; choix: int) {.importcpp: "Set",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfPointEvolRadInv): int {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc value*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector;
                 d: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc values*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointEvolRadInv; p: Pnt) {.importcpp: "Set",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfPointEvolRadInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfPointEvolRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfPointEvolRadInv; sol: MathVector;
                tol: StandardReal): StandardBoolean {.importcpp: "IsSolution",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}