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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFuncGenChamfInv* {.importcpp: "BlendFunc_GenChamfInv",
                         header: "BlendFunc_GenChamfInv.hxx", bycopy.} = object of BlendFuncInv


proc constructBlendFuncGenChamfInv*(s1: Handle[Adaptor3dHSurface];
                                   s2: Handle[Adaptor3dHSurface];
                                   c: Handle[Adaptor3dHCurve]): BlendFuncGenChamfInv {.
    constructor, importcpp: "BlendFunc_GenChamfInv(@)",
    header: "BlendFunc_GenChamfInv.hxx".}
proc set*(this: var BlendFuncGenChamfInv; onFirst: StandardBoolean;
         cOnSurf: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_GenChamfInv.hxx".}
proc getTolerance*(this: BlendFuncGenChamfInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BlendFunc_GenChamfInv.hxx".}
proc getBounds*(this: BlendFuncGenChamfInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_GenChamfInv.hxx".}
proc nbEquations*(this: BlendFuncGenChamfInv): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_GenChamfInv.hxx".}
proc values*(this: var BlendFuncGenChamfInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_GenChamfInv.hxx".}
proc set*(this: var BlendFuncGenChamfInv; dist1: StandardReal; dist2: StandardReal;
         choix: StandardInteger) {.importcpp: "Set",
                                 header: "BlendFunc_GenChamfInv.hxx".}

