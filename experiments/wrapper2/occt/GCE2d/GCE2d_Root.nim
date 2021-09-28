##  Created on: 1992-09-29
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

##  resolve name collisions with X11 headers

# when defined(Status):
#   discard
## ! This class implements the common services for
## ! all classes of gce which report error.

type
  GCE2dRoot* {.importcpp: "GCE2d_Root", header: "GCE2d_Root.hxx", bycopy.} = object ## !
                                                                            ## Returns true if the
                                                                            ## construction is
                                                                            ## successful.


proc isDone*(this: GCE2dRoot): bool {.noSideEffect, importcpp: "IsDone",
                                  header: "GCE2d_Root.hxx".}
proc status*(this: GCE2dRoot): GceErrorType {.noSideEffect, importcpp: "Status",
    header: "GCE2d_Root.hxx".}

























