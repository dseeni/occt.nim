##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
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

discard "forward decl of GeomInt_TheMultiLineOfWLApprox"
discard "forward decl of GeomInt_TheMultiLineToolOfWLApprox"
discard "forward decl of GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox"
discard "forward decl of AppParCurves_MultiCurve"
type
  GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox* {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx",
      bycopy.} = object of MathMultipleVarFunctionWithGradient ## ! this method is used each time Value or Gradient is
                                                          ## ! needed.


proc `new`*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
           theSize: csize_t): pointer {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox::operator new", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
              theAddress: pointer) {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox::operator delete", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc `new[]`*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
             theSize: csize_t): pointer {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox::operator new[]", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc `delete[]`*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
                theAddress: pointer) {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox::operator delete[]", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc `new`*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox::operator new", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc `delete`*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
              a2: pointer; a3: pointer) {.importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox::operator delete", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc constructGeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox*(
    ssp: GeomIntTheMultiLineOfWLApprox; firstPoint: int; lastPoint: int;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple];
    parameters: MathVector; deg: int): GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox {.
    constructor, importcpp: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox(@)", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc nbVariables*(this: GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): int {.
    noSideEffect, importcpp: "NbVariables", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc value*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
           x: MathVector; f: var StandardReal): StandardBoolean {.importcpp: "Value", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc gradient*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
              x: MathVector; g: var MathVector): StandardBoolean {.
    importcpp: "Gradient", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc values*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
            x: MathVector; f: var StandardReal; g: var MathVector): StandardBoolean {.
    importcpp: "Values", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc newParameters*(this: GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): MathVector {.
    noSideEffect, importcpp: "NewParameters", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc curveValue*(this: var GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): AppParCurvesMultiCurve {.
    importcpp: "CurveValue", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc error*(this: GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
           iPoint: int; curveIndex: int): StandardReal {.noSideEffect,
    importcpp: "Error", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc maxError3d*(this: GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError3d", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc maxError2d*(this: GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox): StandardReal {.
    noSideEffect, importcpp: "MaxError2d", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc firstConstraint*(this: GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; firstPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "FirstConstraint", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}
proc lastConstraint*(this: GeomIntParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox;
    theConstraints: Handle[AppParCurvesHArray1OfConstraintCouple]; lastPoint: int): AppParCurvesConstraint {.
    noSideEffect, importcpp: "LastConstraint", header: "GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx".}