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
discard "forward decl of BRepApprox_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of BRepApprox_ResConstraintOfMyGradientOfTheComputeLineBezierOfApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox* {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx",
      bycopy.} = object of MathMultipleVarFunctionWithGradient ## ! this method is used each time Value or Gradient is
                                                          ## ! needed.


proc `new`*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
           theSize: csize_t): pointer {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox::operator new", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
              theAddress: pointer) {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox::operator delete", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `new[]`*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
             theSize: csize_t): pointer {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox::operator new[]", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete[]`*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
                theAddress: pointer) {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox::operator delete[]", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `new`*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox::operator new", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc `delete`*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
              a2: pointer; a3: pointer) {.importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox::operator delete", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc constructBRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox*(
    ssp: BRepApproxTheMultiLineOfApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: int): BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox {.
    constructor, importcpp: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox(@)", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc nbVariables*(this: BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): int {.
    noSideEffect, importcpp: "NbVariables", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc value*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
           x: MathVector; f: var StandardReal): StandardBoolean {.importcpp: "Value", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc gradient*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
              x: MathVector; g: var MathVector): StandardBoolean {.
    importcpp: "Gradient", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc values*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
            x: MathVector; f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc newParameters*(this: BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): MathVector {.
    noSideEffect, importcpp: "NewParameters", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc curveValue*(this: var BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): AppParCurvesMultiCurve {.
    importcpp: "CurveValue", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc error*(this: BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
           iPoint: int; curveIndex: int): StandardReal {.noSideEffect,
    importcpp: "Error", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc maxError3d*(this: BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc maxError2d*(this: BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc firstConstraint*(this: BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; firstPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}
proc lastConstraint*(this: BRepApproxParFunctionOfMyGradientOfTheComputeLineBezierOfApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; lastPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint", header: "BRepApprox_ParFunctionOfMyGradientOfTheComputeLineBezierOfApprox.hxx".}