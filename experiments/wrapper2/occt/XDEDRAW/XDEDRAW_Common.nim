##  Created on: 2003-08-15
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

type
  XDEDRAW_Common* {.importcpp: "XDEDRAW_Common", header: "XDEDRAW_Common.hxx", bycopy.} = object


proc initCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "XDEDRAW_Common::InitCommands(@)", header: "XDEDRAW_Common.hxx".}

























