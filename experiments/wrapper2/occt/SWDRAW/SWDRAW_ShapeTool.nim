##  Created on: 1997-04-22
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

## ! Defines functions to control shapes (in way useful for XSTEP),
## ! additional features which should be basic, or call tools which
## ! are bound with transfer needs.
## ! But these functions work on shapes, geometry, nothing else
## ! (no file, no model, no entity)

type
  SWDRAW_ShapeTool* {.importcpp: "SWDRAW_ShapeTool",
                     header: "SWDRAW_ShapeTool.hxx", bycopy.} = object ## ! Defines and loads all basic functions for SWDRAW on Shapes


proc initCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "SWDRAW_ShapeTool::InitCommands(@)", header: "SWDRAW_ShapeTool.hxx".}

























