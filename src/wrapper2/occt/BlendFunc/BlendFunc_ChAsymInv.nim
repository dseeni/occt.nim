##  Created on: 1998-06-04
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
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFuncChAsymInv* {.importcpp: "BlendFunc_ChAsymInv",
                       header: "BlendFunc_ChAsymInv.hxx", bycopy.} = object of BlendFuncInv


proc constructBlendFuncChAsymInv*(s1: Handle[Adaptor3dHSurface];
                                 s2: Handle[Adaptor3dHSurface];
                                 c: Handle[Adaptor3dHCurve]): BlendFuncChAsymInv {.
    constructor, importcpp: "BlendFunc_ChAsymInv(@)",
    header: "BlendFunc_ChAsymInv.hxx".}
proc set*(this: var BlendFuncChAsymInv; onFirst: StandardBoolean;
         cOnSurf: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_ChAsymInv.hxx".}
proc getTolerance*(this: BlendFuncChAsymInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BlendFunc_ChAsymInv.hxx".}
proc getBounds*(this: BlendFuncChAsymInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_ChAsymInv.hxx".}
proc isSolution*(this: var BlendFuncChAsymInv; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BlendFunc_ChAsymInv.hxx".}
proc nbEquations*(this: BlendFuncChAsymInv): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_ChAsymInv.hxx".}
proc computeValues*(this: var BlendFuncChAsymInv; x: MathVector;
                   degF: StandardInteger; degL: StandardInteger): StandardBoolean {.
    importcpp: "ComputeValues", header: "BlendFunc_ChAsymInv.hxx".}
proc value*(this: var BlendFuncChAsymInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BlendFunc_ChAsymInv.hxx".}
proc derivatives*(this: var BlendFuncChAsymInv; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BlendFunc_ChAsymInv.hxx".}
proc values*(this: var BlendFuncChAsymInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_ChAsymInv.hxx".}
proc set*(this: var BlendFuncChAsymInv; dist1: StandardReal; angle: StandardReal;
         choix: StandardInteger) {.importcpp: "Set",
                                 header: "BlendFunc_ChAsymInv.hxx".}

