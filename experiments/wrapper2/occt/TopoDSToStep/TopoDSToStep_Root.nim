##  Created on: 1993-07-21
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! This class implements the common services for
## ! all classes of TopoDSToStep which report error.

type
  TopoDSToStepRoot* {.importcpp: "TopoDSToStep_Root",
                     header: "TopoDSToStep_Root.hxx", bycopy.} = object ## ! Returns (modifiable) the tolerance to be used for writing
                                                                   ## ! If not set, starts at 0.0001


proc tolerance*(this: var TopoDSToStepRoot): var cfloat {.importcpp: "Tolerance",
    header: "TopoDSToStep_Root.hxx".}
proc isDone*(this: TopoDSToStepRoot): bool {.noSideEffect, importcpp: "IsDone",
    header: "TopoDSToStep_Root.hxx".}

























