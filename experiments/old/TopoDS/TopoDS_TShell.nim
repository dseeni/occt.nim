##  Created on: 1990-12-17
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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

discard "forward decl of TopoDS_TShape"
discard "forward decl of TopoDS_TShell"
discard "forward decl of TopoDS_TShell"
type
  TopoDS_TShell* {.importcpp: "TopoDS_TShell", header: "TopoDS_TShell.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## empty
                                                                                                     ## TShell.

type
  HandleTopoDS_TShell* = Handle[TopoDS_TShell]

## ! A set of faces connected by their edges.
type
  TopoDS_TShellbaseType* = TopoDS_TShape


proc constructTopoDS_TShell*(): TopoDS_TShell {.constructor,
    importcpp: "TopoDS_TShell(@)", header: "TopoDS_TShell.hxx".}
#[ proc shapeType*(this: TopoDS_TShell): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TShell.hxx".}
proc emptyCopy*(this: TopoDS_TShell): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "TopoDS_TShell.hxx".}


proc getTypeName*(): cstring {.importcpp: "TopoDS_TShell::get_type_name(@)",
                            header: "TopoDS_TShell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TShell::get_type_descriptor(@)",
    header: "TopoDS_TShell.hxx".}
proc dynamicType*(this: TopoDS_TShell): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TShell.hxx".} ]#