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

## ! if N is the normal
## !
## ! InfinityOfSolutions : ||DN/du||>Resolution, ||DN/dv||>Resolution
## !
## ! D1NuIsNull          : ||DN/du|| <= Resolution
## !
## ! D1NvIsNull          : ||DN/dv|| <= Resolution
## !
## ! D1NIsNull           : ||DN/du||<=Resolution, ||DN/dv||<=Resolution
## !
## ! D1NuNvRatioIsNull   : ||D1Nu|| / ||D1Nv|| <= RealEpsilon
## !
## ! D1NvNuRatioIsNull   : ||D1Nu|| / ||D1Nv|| <= RealEpsilon
## !
## ! D1NuIsParallelD1Nv  : The angle between D1Nu and D1Nv is Null.

type
  CSLibNormalStatus* {.size: sizeof(cint), importcpp: "CSLib_NormalStatus",
                      header: "CSLib_NormalStatus.hxx".} = enum
    CSLibSingular, CSLibDefined, CSLibInfinityOfSolutions, CSLibD1NuIsNull,
    CSLibD1NvIsNull, CSLibD1NIsNull, CSLibD1NuNvRatioIsNull,
    CSLibD1NvNuRatioIsNull, CSLibD1NuIsParallelD1Nv


