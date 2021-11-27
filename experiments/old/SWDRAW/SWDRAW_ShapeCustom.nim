##  Created on: 1999-03-09
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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

## ! Contains commands to activate package ShapeCustom
## ! List of DRAW commands and corresponding functionalities:
## ! directfaces - ShapeCustom::DirectFaces
## ! scaleshape  - ShapeCustom::ScaleShape

type
  SWDRAW_ShapeCustom* {.importcpp: "SWDRAW_ShapeCustom",
                       header: "SWDRAW_ShapeCustom.hxx", bycopy.} = object ## ! Loads commands defined in
                                                                      ## ShapeCustom


proc initCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "SWDRAW_ShapeCustom::InitCommands(@)",
    header: "SWDRAW_ShapeCustom.hxx".}
























