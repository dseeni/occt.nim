##  Created on: 2014-07-18
##  Created by: Alexander Malyshev
##  Copyright (c) 2014-2014 OPEN CASCADE SAS
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

## ! Fast random number generator (the algorithm proposed by Ian C. Bullard).

type
  MathBullardGenerator* {.importcpp: "math_BullardGenerator",
                         header: "math_BullardGenerator.hxx", bycopy.} = object ## !
                                                                           ## Creates new
                                                                           ## Xorshift
                                                                           ## 64-bit RNG.


proc constructMathBullardGenerator*(theSeed: cuint = 1): MathBullardGenerator {.
    constructor, importcpp: "math_BullardGenerator(@)",
    header: "math_BullardGenerator.hxx".}
proc setSeed*(this: var MathBullardGenerator; theSeed: cuint = 1) {.
    importcpp: "SetSeed", header: "math_BullardGenerator.hxx".}
proc nextInt*(this: var MathBullardGenerator): cuint {.importcpp: "NextInt",
    header: "math_BullardGenerator.hxx".}
proc nextReal*(this: var MathBullardGenerator): cfloat {.importcpp: "NextReal",
    header: "math_BullardGenerator.hxx".}

























