##  Created on: 1996-09-16
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
type
  LocOpeBuildShape* {.importcpp: "LocOpe_BuildShape",
                     header: "LocOpe_BuildShape.hxx", bycopy.} = object


proc constructLocOpeBuildShape*(): LocOpeBuildShape {.constructor,
    importcpp: "LocOpe_BuildShape(@)", header: "LocOpe_BuildShape.hxx".}
proc constructLocOpeBuildShape*(L: TopToolsListOfShape): LocOpeBuildShape {.
    constructor, importcpp: "LocOpe_BuildShape(@)", header: "LocOpe_BuildShape.hxx".}
proc perform*(this: var LocOpeBuildShape; L: TopToolsListOfShape) {.
    importcpp: "Perform", header: "LocOpe_BuildShape.hxx".}
proc shape*(this: LocOpeBuildShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_BuildShape.hxx".}
























