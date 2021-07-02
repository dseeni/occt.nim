##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of AppDef_MultiLine"
discard "forward decl of AppDef_MyLineTool"
discard "forward decl of AppParCurves_MultiCurve"
discard "forward decl of math_Matrix"
type
  AppDefTheResol* {.importcpp: "AppDef_TheResol", header: "AppDef_TheResol.hxx",
                   bycopy.} = object ## ! Given a MultiLine SSP with constraints points, this
                                  ## ! algorithm finds the best curve solution to approximate it.
                                  ## ! The poles from SCurv issued for example from the least
                                  ## ! squares are used as a guess solution for the uzawa
                                  ## ! algorithm. The tolerance used in the Uzawa algorithms
                                  ## ! is Tolerance.
                                  ## ! A is the Bernstein matrix associated to the MultiLine
                                  ## ! and DA is the derivative bernstein matrix.(They can come
                                  ## ! from an approximation with ParLeastSquare.)
                                  ## ! The MultiCurve is modified. New MultiPoles are given.
                                  ## ! is used internally to create the fields.


proc constructAppDefTheResol*(ssp: AppDefMultiLine;
                             sCurv: var AppParCurvesMultiCurve;
                             firstPoint: StandardInteger;
                             lastPoint: StandardInteger; constraints: Handle[
    AppParCurvesHArray1OfConstraintCouple]; bern: MathMatrix;
                             derivativeBern: MathMatrix;
                             tolerance: StandardReal = 1.0e-10): AppDefTheResol {.
    constructor, importcpp: "AppDef_TheResol(@)", header: "AppDef_TheResol.hxx".}
proc isDone*(this: AppDefTheResol): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "AppDef_TheResol.hxx".}
proc error*(this: AppDefTheResol): StandardReal {.noSideEffect, importcpp: "Error",
    header: "AppDef_TheResol.hxx".}
proc constraintMatrix*(this: AppDefTheResol): MathMatrix {.noSideEffect,
    importcpp: "ConstraintMatrix", header: "AppDef_TheResol.hxx".}
proc duale*(this: AppDefTheResol): MathVector {.noSideEffect, importcpp: "Duale",
    header: "AppDef_TheResol.hxx".}
proc constraintDerivative*(this: var AppDefTheResol; ssp: AppDefMultiLine;
                          parameters: MathVector; deg: StandardInteger;
                          da: MathMatrix): MathMatrix {.
    importcpp: "ConstraintDerivative", header: "AppDef_TheResol.hxx".}
proc inverseMatrix*(this: AppDefTheResol): MathMatrix {.noSideEffect,
    importcpp: "InverseMatrix", header: "AppDef_TheResol.hxx".}

