##  Created on: 1997-01-23
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

discard "forward decl of BRepBlend_Line"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Blend_RstRstFunction"
discard "forward decl of Blend_SurfCurvFuncInv"
discard "forward decl of Blend_CurvPointFuncInv"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of IntSurf_Transition"
discard "forward decl of BRepBlend_Extremity"
discard "forward decl of Blend_Point"
type
  BRepBlendRstRstLineBuilder* {.importcpp: "BRepBlend_RstRstLineBuilder",
                               header: "BRepBlend_RstRstLineBuilder.hxx", bycopy.} = object


proc `new`*(this: var BRepBlendRstRstLineBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_RstRstLineBuilder::operator new",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc `delete`*(this: var BRepBlendRstRstLineBuilder; theAddress: pointer) {.
    importcpp: "BRepBlend_RstRstLineBuilder::operator delete",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc `new[]`*(this: var BRepBlendRstRstLineBuilder; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_RstRstLineBuilder::operator new[]",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc `delete[]`*(this: var BRepBlendRstRstLineBuilder; theAddress: pointer) {.
    importcpp: "BRepBlend_RstRstLineBuilder::operator delete[]",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc `new`*(this: var BRepBlendRstRstLineBuilder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBlend_RstRstLineBuilder::operator new",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc `delete`*(this: var BRepBlendRstRstLineBuilder; a2: pointer; a3: pointer) {.
    importcpp: "BRepBlend_RstRstLineBuilder::operator delete",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc constructBRepBlendRstRstLineBuilder*(surf1: Handle[Adaptor3dHSurface];
    rst1: Handle[Adaptor2dHCurve2d]; domain1: Handle[Adaptor3dTopolTool];
    surf2: Handle[Adaptor3dHSurface]; rst2: Handle[Adaptor2dHCurve2d];
    domain2: Handle[Adaptor3dTopolTool]): BRepBlendRstRstLineBuilder {.constructor,
    importcpp: "BRepBlend_RstRstLineBuilder(@)",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc perform*(this: var BRepBlendRstRstLineBuilder; `func`: var BlendRstRstFunction;
             finv1: var BlendSurfCurvFuncInv; finvP1: var BlendCurvPointFuncInv;
             finv2: var BlendSurfCurvFuncInv; finvP2: var BlendCurvPointFuncInv;
             pdep: StandardReal; pmax: StandardReal; maxStep: StandardReal;
             tolGuide: StandardReal; soldep: MathVector; tolesp: StandardReal;
             fleche: StandardReal; appro: StandardBoolean = false) {.
    importcpp: "Perform", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc performFirstSection*(this: var BRepBlendRstRstLineBuilder;
                         `func`: var BlendRstRstFunction;
                         finv1: var BlendSurfCurvFuncInv;
                         finvP1: var BlendCurvPointFuncInv;
                         finv2: var BlendSurfCurvFuncInv;
                         finvP2: var BlendCurvPointFuncInv; pdep: StandardReal;
                         pmax: StandardReal; soldep: MathVector;
                         tolesp: StandardReal; tolGuide: StandardReal;
                         recRst1: StandardBoolean; recP1: StandardBoolean;
                         recRst2: StandardBoolean; recP2: StandardBoolean;
                         psol: var StandardReal; parSol: var MathVector): StandardBoolean {.
    importcpp: "PerformFirstSection", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc complete*(this: var BRepBlendRstRstLineBuilder;
              `func`: var BlendRstRstFunction; finv1: var BlendSurfCurvFuncInv;
              finvP1: var BlendCurvPointFuncInv; finv2: var BlendSurfCurvFuncInv;
              finvP2: var BlendCurvPointFuncInv; pmin: StandardReal): StandardBoolean {.
    importcpp: "Complete", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc isDone*(this: BRepBlendRstRstLineBuilder): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc line*(this: BRepBlendRstRstLineBuilder): Handle[BRepBlendLine] {.noSideEffect,
    importcpp: "Line", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc decroch1Start*(this: BRepBlendRstRstLineBuilder): StandardBoolean {.
    noSideEffect, importcpp: "Decroch1Start",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc decroch1End*(this: BRepBlendRstRstLineBuilder): StandardBoolean {.noSideEffect,
    importcpp: "Decroch1End", header: "BRepBlend_RstRstLineBuilder.hxx".}
proc decroch2Start*(this: BRepBlendRstRstLineBuilder): StandardBoolean {.
    noSideEffect, importcpp: "Decroch2Start",
    header: "BRepBlend_RstRstLineBuilder.hxx".}
proc decroch2End*(this: BRepBlendRstRstLineBuilder): StandardBoolean {.noSideEffect,
    importcpp: "Decroch2End", header: "BRepBlend_RstRstLineBuilder.hxx".}