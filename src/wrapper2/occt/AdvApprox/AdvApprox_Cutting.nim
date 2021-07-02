##  Created on: 1996-04-05
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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

## ! to choose the way of cutting in approximation

type
  AdvApproxCutting* {.importcpp: "AdvApprox_Cutting",
                     header: "AdvApprox_Cutting.hxx", bycopy.} = object


proc destroyAdvApproxCutting*(this: var AdvApproxCutting) {.
    importcpp: "#.~AdvApprox_Cutting()", header: "AdvApprox_Cutting.hxx".}
proc value*(this: AdvApproxCutting; a: StandardReal; b: StandardReal;
           cuttingvalue: var StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "Value", header: "AdvApprox_Cutting.hxx".}

