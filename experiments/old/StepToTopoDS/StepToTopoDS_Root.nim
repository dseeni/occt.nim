##  Created on: 1993-07-28
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
## ! all classes of StepToTopoDS which report error
## ! and sets and returns precision.

type
  StepToTopoDS_Root* {.importcpp: "StepToTopoDS_Root",
                      header: "StepToTopoDS_Root.hxx", bycopy.} = object


proc `new`*(this: var StepToTopoDS_Root; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_Root::operator new", header: "StepToTopoDS_Root.hxx".}
proc `delete`*(this: var StepToTopoDS_Root; theAddress: pointer) {.
    importcpp: "StepToTopoDS_Root::operator delete",
    header: "StepToTopoDS_Root.hxx".}
proc `new[]`*(this: var StepToTopoDS_Root; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS_Root::operator new[]",
    header: "StepToTopoDS_Root.hxx".}
proc `delete[]`*(this: var StepToTopoDS_Root; theAddress: pointer) {.
    importcpp: "StepToTopoDS_Root::operator delete[]",
    header: "StepToTopoDS_Root.hxx".}
proc `new`*(this: var StepToTopoDS_Root; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepToTopoDS_Root::operator new", header: "StepToTopoDS_Root.hxx".}
proc `delete`*(this: var StepToTopoDS_Root; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS_Root::operator delete",
    header: "StepToTopoDS_Root.hxx".}
proc isDone*(this: StepToTopoDS_Root): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "StepToTopoDS_Root.hxx".}
proc precision*(this: StepToTopoDS_Root): StandardReal {.noSideEffect,
    importcpp: "Precision", header: "StepToTopoDS_Root.hxx".}
proc setPrecision*(this: var StepToTopoDS_Root; preci: StandardReal) {.
    importcpp: "SetPrecision", header: "StepToTopoDS_Root.hxx".}
proc maxTol*(this: StepToTopoDS_Root): StandardReal {.noSideEffect,
    importcpp: "MaxTol", header: "StepToTopoDS_Root.hxx".}
proc setMaxTol*(this: var StepToTopoDS_Root; maxpreci: StandardReal) {.
    importcpp: "SetMaxTol", header: "StepToTopoDS_Root.hxx".}