##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of BRepApprox_TheMultiLineOfApprox"
discard "forward decl of BRepApprox_TheMultiLineToolOfApprox"
discard "forward decl of BRepApprox_MyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of math_MultipleVarFunctionWithGradient"
type
  BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox* {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx",
      bycopy.} = object of MathBFGS


proc `new`*(this: var BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox::operator new", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox::operator delete", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox::operator new[]", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox::operator delete[]", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `new`*(this: var BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox::operator new", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox::operator delete", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox*(
    f: var MathMultipleVarFunctionWithGradient; startingPoint: MathVector;
    tolerance3d: StandardReal; tolerance2d: StandardReal; eps: StandardReal;
    nbIterations: int = 200): BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc isSolutionReached*(this: BRepApproxGradientBFGSOfMyGradientOfTheComputeLineBezierOfApprox;
                       f: var MathMultipleVarFunctionWithGradient): StandardBoolean {.
    noSideEffect, importcpp: "IsSolutionReached", header: "BRepApprox_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}