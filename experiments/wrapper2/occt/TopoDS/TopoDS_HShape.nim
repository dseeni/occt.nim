##  Created on: 1995-06-28
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of TopoDS_HShape"
discard "forward decl of TopoDS_HShape"
type
  HandleTopoDS_HShape* = Handle[TopoDS_HShape]

## ! Class to manipulate a Shape with  handle.

type
  TopoDS_HShape* {.importcpp: "TopoDS_HShape", header: "TopoDS_HShape.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Constructs
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## shape
                                                                                                         ## object


proc constructTopoDS_HShape*(): TopoDS_HShape {.constructor,
    importcpp: "TopoDS_HShape(@)", header: "TopoDS_HShape.hxx".}
proc constructTopoDS_HShape*(aShape: TopoDS_Shape): TopoDS_HShape {.constructor,
    importcpp: "TopoDS_HShape(@)", header: "TopoDS_HShape.hxx".}
proc shape*(this: var TopoDS_HShape; aShape: TopoDS_Shape) {.importcpp: "Shape",
    header: "TopoDS_HShape.hxx".}
proc shape*(this: TopoDS_HShape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "TopoDS_HShape.hxx".}
proc changeShape*(this: var TopoDS_HShape): var TopoDS_Shape {.
    importcpp: "ChangeShape", header: "TopoDS_HShape.hxx".}
type
  TopoDS_HShapebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopoDS_HShape::get_type_name(@)",
                            header: "TopoDS_HShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_HShape::get_type_descriptor(@)",
    header: "TopoDS_HShape.hxx".}
proc dynamicType*(this: TopoDS_HShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_HShape.hxx".}
