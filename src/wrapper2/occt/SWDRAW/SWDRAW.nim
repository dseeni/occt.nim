##  Created on: 1998-05-06
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Draw/Draw_Interpretor,
  ../Standard/Standard_CString

discard "forward decl of SWDRAW_ShapeTool"
discard "forward decl of SWDRAW_ShapeAnalysis"
discard "forward decl of SWDRAW_ShapeCustom"
discard "forward decl of SWDRAW_ShapeExtend"
discard "forward decl of SWDRAW_ShapeFix"
discard "forward decl of SWDRAW_ShapeUpgrade"
discard "forward decl of SWDRAW_ShapeProcess"
discard "forward decl of SWDRAW_ShapeProcessAPI"
type
  SWDRAW* {.importcpp: "SWDRAW", header: "SWDRAW.hxx", bycopy.} = object ## ! Loads commands defined in SWDRAW
                                                                 ## ! Returns the name of the DRAW group accumulating the
                                                                 ## ! commands from the classes prefixed with Shape*.
                                                                 ## ! Returns "Shape Healing".


proc Init*(theCommands: var Draw_Interpretor) {.importcpp: "SWDRAW::Init(@)",
    header: "SWDRAW.hxx".}