##  Created on: 1991-09-03
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_RangeError"
type
  MathTrigonometricFunctionRoots* {.importcpp: "math_TrigonometricFunctionRoots", header: "math_TrigonometricFunctionRoots.hxx",
                                   bycopy.} = object ## ! Given coefficients a, b, c, d , e, this constructor
                                                  ## ! performs the resolution of the equation above.
                                                  ## ! The solutions must be contained in [InfBound, SupBound].
                                                  ## ! InfBound and SupBound can be set by default to 0 and 2*PI.
                                                  ## ! is used by the constructors above.


proc constructMathTrigonometricFunctionRoots*(a: float; b: float; c: float; d: float;
    e: float; infBound: float; supBound: float): MathTrigonometricFunctionRoots {.
    constructor, importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc constructMathTrigonometricFunctionRoots*(d: float; e: float; infBound: float;
    supBound: float): MathTrigonometricFunctionRoots {.constructor,
    importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc constructMathTrigonometricFunctionRoots*(c: float; d: float; e: float;
    infBound: float; supBound: float): MathTrigonometricFunctionRoots {.constructor,
    importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc isDone*(this: MathTrigonometricFunctionRoots): bool {.noSideEffect,
    importcpp: "IsDone", header: "math_TrigonometricFunctionRoots.hxx".}
proc infiniteRoots*(this: MathTrigonometricFunctionRoots): bool {.noSideEffect,
    importcpp: "InfiniteRoots", header: "math_TrigonometricFunctionRoots.hxx".}
proc value*(this: MathTrigonometricFunctionRoots; index: int): float {.noSideEffect,
    importcpp: "Value", header: "math_TrigonometricFunctionRoots.hxx".}
proc nbSolutions*(this: MathTrigonometricFunctionRoots): int {.noSideEffect,
    importcpp: "NbSolutions", header: "math_TrigonometricFunctionRoots.hxx".}
proc dump*(this: MathTrigonometricFunctionRoots; o: var StandardOStream) {.
    noSideEffect, importcpp: "Dump", header: "math_TrigonometricFunctionRoots.hxx".}
