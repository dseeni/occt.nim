import ../../tkmath/math/math_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import blendfunc_types





##  Created by: Julia GERASIMOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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



proc newBlendFuncConstThroatWithPenetration*(s1: Handle[Adaptor3dHSurface];
    s2: Handle[Adaptor3dHSurface]; c: Handle[Adaptor3dHCurve]): BlendFuncConstThroatWithPenetration {.
    cdecl, constructor, importcpp: "BlendFunc_ConstThroatWithPenetration(@)",
    header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc value*(this: var BlendFuncConstThroatWithPenetration; x: MathVector;
           f: var MathVector): bool {.cdecl, importcpp: "Value", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc derivatives*(this: var BlendFuncConstThroatWithPenetration; x: MathVector;
                 d: var MathMatrix): bool {.cdecl, importcpp: "Derivatives",
                                        header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc isSolution*(this: var BlendFuncConstThroatWithPenetration; sol: MathVector;
                tol: cfloat): bool {.cdecl, importcpp: "IsSolution", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangentOnS1*(this: BlendFuncConstThroatWithPenetration): VecObj {.noSideEffect,
    cdecl, importcpp: "TangentOnS1", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangent2dOnS1*(this: BlendFuncConstThroatWithPenetration): Vec2dObj {.
    noSideEffect, cdecl, importcpp: "Tangent2dOnS1", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangentOnS2*(this: BlendFuncConstThroatWithPenetration): VecObj {.noSideEffect,
    cdecl, importcpp: "TangentOnS2", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc tangent2dOnS2*(this: BlendFuncConstThroatWithPenetration): Vec2dObj {.
    noSideEffect, cdecl, importcpp: "Tangent2dOnS2", header: "BlendFunc_ConstThroatWithPenetration.hxx".}
proc getSectionSize*(this: BlendFuncConstThroatWithPenetration): cfloat {.
    noSideEffect, cdecl, importcpp: "GetSectionSize", header: "BlendFunc_ConstThroatWithPenetration.hxx".}

