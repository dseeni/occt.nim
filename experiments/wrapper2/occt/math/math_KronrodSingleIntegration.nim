##  Created on: 2005-12-08
##  Created by: Sergey KHROMOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
discard "forward decl of math_Function"
type
  MathKronrodSingleIntegration* {.importcpp: "math_KronrodSingleIntegration",
                                 header: "math_KronrodSingleIntegration.hxx",
                                 bycopy.} = object ## ! An empty constructor.


proc constructMathKronrodSingleIntegration*(): MathKronrodSingleIntegration {.
    constructor, importcpp: "math_KronrodSingleIntegration(@)",
    header: "math_KronrodSingleIntegration.hxx".}
proc constructMathKronrodSingleIntegration*(theFunction: var MathFunction;
    theLower: cfloat; theUpper: cfloat; theNbPnts: cint): MathKronrodSingleIntegration {.
    constructor, importcpp: "math_KronrodSingleIntegration(@)",
    header: "math_KronrodSingleIntegration.hxx".}
proc constructMathKronrodSingleIntegration*(theFunction: var MathFunction;
    theLower: cfloat; theUpper: cfloat; theNbPnts: cint; theTolerance: cfloat;
    theMaxNbIter: cint): MathKronrodSingleIntegration {.constructor,
    importcpp: "math_KronrodSingleIntegration(@)",
    header: "math_KronrodSingleIntegration.hxx".}
proc perform*(this: var MathKronrodSingleIntegration; theFunction: var MathFunction;
             theLower: cfloat; theUpper: cfloat; theNbPnts: cint) {.
    importcpp: "Perform", header: "math_KronrodSingleIntegration.hxx".}
proc perform*(this: var MathKronrodSingleIntegration; theFunction: var MathFunction;
             theLower: cfloat; theUpper: cfloat; theNbPnts: cint;
             theTolerance: cfloat; theMaxNbIter: cint) {.importcpp: "Perform",
    header: "math_KronrodSingleIntegration.hxx".}
proc isDone*(this: MathKronrodSingleIntegration): bool {.noSideEffect,
    importcpp: "IsDone", header: "math_KronrodSingleIntegration.hxx".}
proc value*(this: MathKronrodSingleIntegration): cfloat {.noSideEffect,
    importcpp: "Value", header: "math_KronrodSingleIntegration.hxx".}
proc errorReached*(this: MathKronrodSingleIntegration): cfloat {.noSideEffect,
    importcpp: "ErrorReached", header: "math_KronrodSingleIntegration.hxx".}
proc absolutError*(this: MathKronrodSingleIntegration): cfloat {.noSideEffect,
    importcpp: "AbsolutError", header: "math_KronrodSingleIntegration.hxx".}
proc orderReached*(this: MathKronrodSingleIntegration): cint {.noSideEffect,
    importcpp: "OrderReached", header: "math_KronrodSingleIntegration.hxx".}
proc nbIterReached*(this: MathKronrodSingleIntegration): cint {.noSideEffect,
    importcpp: "NbIterReached", header: "math_KronrodSingleIntegration.hxx".}
proc gKRule*(theFunction: var MathFunction; theLower: cfloat; theUpper: cfloat;
            theGaussP: MathVector; theGaussW: MathVector; theKronrodP: MathVector;
            theKronrodW: MathVector; theValue: var cfloat; theError: var cfloat): bool {.
    importcpp: "math_KronrodSingleIntegration::GKRule(@)",
    header: "math_KronrodSingleIntegration.hxx".}

























