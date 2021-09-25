##  Created on: 1991-04-24
##  Created by: Arnaud BOUZY
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

type
  DrawColor* {.importcpp: "Draw_Color", header: "Draw_Color.hxx", bycopy.} = object


proc constructDrawColor*(): DrawColor {.constructor, importcpp: "Draw_Color(@)",
                                     header: "Draw_Color.hxx".}
proc constructDrawColor*(c: DrawColorKind): DrawColor {.constructor,
    importcpp: "Draw_Color(@)", header: "Draw_Color.hxx".}
proc id*(this: DrawColor): DrawColorKind {.noSideEffect, importcpp: "ID",
                                       header: "Draw_Color.hxx".}
