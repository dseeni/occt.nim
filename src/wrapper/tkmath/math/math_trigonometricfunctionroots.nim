import math_types
import ../../tkernel/standard/standard_types
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


proc newMathTrigonometricFunctionRoots*(a: cfloat; b: cfloat; c: cfloat; d: cfloat;
                                       e: cfloat; infBound: cfloat; supBound: cfloat): MathTrigonometricFunctionRoots {.
    cdecl, constructor, importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc newMathTrigonometricFunctionRoots*(d: cfloat; e: cfloat; infBound: cfloat;
                                       supBound: cfloat): MathTrigonometricFunctionRoots {.
    cdecl, constructor, importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc newMathTrigonometricFunctionRoots*(c: cfloat; d: cfloat; e: cfloat;
                                       infBound: cfloat; supBound: cfloat): MathTrigonometricFunctionRoots {.
    cdecl, constructor, importcpp: "math_TrigonometricFunctionRoots(@)",
    header: "math_TrigonometricFunctionRoots.hxx".}
proc isDone*(this: MathTrigonometricFunctionRoots): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "math_TrigonometricFunctionRoots.hxx".}
proc infiniteRoots*(this: MathTrigonometricFunctionRoots): bool {.noSideEffect,
    cdecl, importcpp: "InfiniteRoots", header: "math_TrigonometricFunctionRoots.hxx".}
proc value*(this: MathTrigonometricFunctionRoots; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "Value", header: "math_TrigonometricFunctionRoots.hxx".}
proc nbSolutions*(this: MathTrigonometricFunctionRoots): cint {.noSideEffect, cdecl,
    importcpp: "NbSolutions", header: "math_TrigonometricFunctionRoots.hxx".}
proc dump*(this: MathTrigonometricFunctionRoots; o: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Dump", header: "math_TrigonometricFunctionRoots.hxx".}
