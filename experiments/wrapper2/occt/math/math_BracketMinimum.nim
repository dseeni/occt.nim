##  Created on: 1991-05-14
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
discard "forward decl of math_Function"
type
  MathBracketMinimum* {.importcpp: "math_BracketMinimum",
                       header: "math_BracketMinimum.hxx", bycopy.} = object ## !
                                                                       ## Constructor preparing A and B
                                                                       ## parameters only. It does not perform the job.
                                                                       ## ! Limit the given value to become within the range [myLeft, myRight].


proc constructMathBracketMinimum*(a: float; b: float): MathBracketMinimum {.
    constructor, importcpp: "math_BracketMinimum(@)",
    header: "math_BracketMinimum.hxx".}
proc constructMathBracketMinimum*(f: var MathFunction; a: float; b: float): MathBracketMinimum {.
    constructor, importcpp: "math_BracketMinimum(@)",
    header: "math_BracketMinimum.hxx".}
proc constructMathBracketMinimum*(f: var MathFunction; a: float; b: float; fa: float): MathBracketMinimum {.
    constructor, importcpp: "math_BracketMinimum(@)",
    header: "math_BracketMinimum.hxx".}
proc constructMathBracketMinimum*(f: var MathFunction; a: float; b: float; fa: float;
                                 fb: float): MathBracketMinimum {.constructor,
    importcpp: "math_BracketMinimum(@)", header: "math_BracketMinimum.hxx".}
proc setLimits*(this: var MathBracketMinimum; theLeft: float; theRight: float) {.
    importcpp: "SetLimits", header: "math_BracketMinimum.hxx".}
proc setFA*(this: var MathBracketMinimum; theValue: float) {.importcpp: "SetFA",
    header: "math_BracketMinimum.hxx".}
proc setFB*(this: var MathBracketMinimum; theValue: float) {.importcpp: "SetFB",
    header: "math_BracketMinimum.hxx".}
proc perform*(this: var MathBracketMinimum; f: var MathFunction) {.
    importcpp: "Perform", header: "math_BracketMinimum.hxx".}
proc isDone*(this: MathBracketMinimum): bool {.noSideEffect, importcpp: "IsDone",
    header: "math_BracketMinimum.hxx".}
proc values*(this: MathBracketMinimum; a: var float; b: var float; c: var float) {.
    noSideEffect, importcpp: "Values", header: "math_BracketMinimum.hxx".}
proc functionValues*(this: MathBracketMinimum; fa: var float; fb: var float;
                    fc: var float) {.noSideEffect, importcpp: "FunctionValues",
                                  header: "math_BracketMinimum.hxx".}
proc dump*(this: MathBracketMinimum; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_BracketMinimum.hxx".}
