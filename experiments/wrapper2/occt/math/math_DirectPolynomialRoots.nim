##  Created on: 1991-05-13
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

discard "forward decl of Standard_RangeError"
discard "forward decl of StdFail_InfiniteSolutions"
type
  MathDirectPolynomialRoots* {.importcpp: "math_DirectPolynomialRoots",
                              header: "math_DirectPolynomialRoots.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## computes
                                                                                     ## all
                                                                                     ## the
                                                                                     ## real
                                                                                     ## roots
                                                                                     ## of
                                                                                     ## the
                                                                                     ## polynomial
                                                                                     ##
                                                                                     ## !
                                                                                     ## Ax4
                                                                                     ## +
                                                                                     ## Bx3
                                                                                     ## +
                                                                                     ## Cx2
                                                                                     ## +
                                                                                     ## Dx
                                                                                     ## +
                                                                                     ## E
                                                                                     ## using
                                                                                     ## a
                                                                                     ## direct
                                                                                     ## method.


proc constructMathDirectPolynomialRoots*(a: cfloat; b: cfloat; c: cfloat; d: cfloat;
                                        e: cfloat): MathDirectPolynomialRoots {.
    constructor, importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc constructMathDirectPolynomialRoots*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): MathDirectPolynomialRoots {.
    constructor, importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc constructMathDirectPolynomialRoots*(a: cfloat; b: cfloat; c: cfloat): MathDirectPolynomialRoots {.
    constructor, importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc constructMathDirectPolynomialRoots*(a: cfloat; b: cfloat): MathDirectPolynomialRoots {.
    constructor, importcpp: "math_DirectPolynomialRoots(@)",
    header: "math_DirectPolynomialRoots.hxx".}
proc isDone*(this: MathDirectPolynomialRoots): bool {.noSideEffect,
    importcpp: "IsDone", header: "math_DirectPolynomialRoots.hxx".}
proc infiniteRoots*(this: MathDirectPolynomialRoots): bool {.noSideEffect,
    importcpp: "InfiniteRoots", header: "math_DirectPolynomialRoots.hxx".}
proc nbSolutions*(this: MathDirectPolynomialRoots): cint {.noSideEffect,
    importcpp: "NbSolutions", header: "math_DirectPolynomialRoots.hxx".}
proc value*(this: MathDirectPolynomialRoots; nieme: cint): cfloat {.noSideEffect,
    importcpp: "Value", header: "math_DirectPolynomialRoots.hxx".}
proc dump*(this: MathDirectPolynomialRoots; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "math_DirectPolynomialRoots.hxx".}

























