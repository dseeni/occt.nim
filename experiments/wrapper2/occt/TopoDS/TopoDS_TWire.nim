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
discard "forward decl of TopoDS_TWire"
discard "forward decl of TopoDS_TWire"
type
  HandleTopoDS_TWire* = Handle[TopoDS_TWire]

## ! A set of edges connected by their vertices.

type
  TopoDS_TWire* {.importcpp: "TopoDS_TWire", header: "TopoDS_TWire.hxx", bycopy.} = object of TopoDS_TShape ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## TWire.


proc constructTopoDS_TWire*(): TopoDS_TWire {.constructor,
    importcpp: "TopoDS_TWire(@)", header: "TopoDS_TWire.hxx".}
proc shapeType*(this: TopoDS_TWire): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_TWire.hxx".}
proc emptyCopy*(this: TopoDS_TWire): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "EmptyCopy", header: "TopoDS_TWire.hxx".}
type
  TopoDS_TWirebaseType* = TopoDS_TShape

proc getTypeName*(): cstring {.importcpp: "TopoDS_TWire::get_type_name(@)",
                            header: "TopoDS_TWire.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_TWire::get_type_descriptor(@)", header: "TopoDS_TWire.hxx".}
proc dynamicType*(this: TopoDS_TWire): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_TWire.hxx".}
