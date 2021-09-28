##  Created on: 1991-09-09
##  Created by: Michel Chauvat
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

## ! D1uIsNull : ||D1U|| <= Resolution
## !
## ! D1vIsNull : ||D1V|| <= Resolution
## !
## ! D1IsNull  : the first derivatives in the U and V parametric
## ! directions have null length  :
## ! ||D1U|| <= Resolution and ||D1V|| <= Resolution
## !
## ! D1uD1vRatioIsNull : the first derivative in the U direction has
## ! null length by comparison with the derivative
## ! in the V direction
## ! ||D1U|| / ||D1V|| <= RealEpsilon
## !
## ! D1vD1uRatioIsNull : the first derivative in the V direction has
## ! null length by comparison with the derivative
## ! in the U direction
## ! ||D1V|| / ||D1U|| <= RealEpsilon
## !
## ! D1uIsParallelD1v : the angle between the derivatives in the U and
## ! V direction is null (tolerance criterion given
## ! as input data)

type
  CSLibDerivativeStatus* {.size: sizeof(cint), importcpp: "CSLib_DerivativeStatus",
                          header: "CSLib_DerivativeStatus.hxx".} = enum
    CSLibDone, CSLibD1uIsNull, CSLibD1vIsNull, CSLibD1IsNull,
    CSLibD1uD1vRatioIsNull, CSLibD1vD1uRatioIsNull, CSLibD1uIsParallelD1v



























