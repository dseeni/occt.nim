##  Created on: 2001-01-04
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

## ! Contains points array definition.

type
  Graphic3dArrayOfPoints* {.importcpp: "Graphic3d_ArrayOfPoints",
                           header: "Graphic3d_ArrayOfPoints.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## an
                                                                                                           ## array
                                                                                                           ## of
                                                                                                           ## points
                                                                                                           ## (Graphic3d_TOPA_POINTS).
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## The
                                                                                                           ## array
                                                                                                           ## must
                                                                                                           ## be
                                                                                                           ## filled
                                                                                                           ## using
                                                                                                           ## the
                                                                                                           ## AddVertex(Point)
                                                                                                           ## method.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## theMaxVertexs
                                                                                                           ## maximum
                                                                                                           ## number
                                                                                                           ## of
                                                                                                           ## points
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## theArrayFlags
                                                                                                           ## array
                                                                                                           ## flags

  Graphic3dArrayOfPointsbaseType* = Graphic3dArrayOfPrimitives

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ArrayOfPoints::get_type_name(@)",
                            header: "Graphic3d_ArrayOfPoints.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ArrayOfPoints::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfPoints.hxx".}
proc dynamicType*(this: Graphic3dArrayOfPoints): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ArrayOfPoints.hxx".}
proc constructGraphic3dArrayOfPoints*(theMaxVertexs: StandardInteger;
                                     theArrayFlags: Graphic3dArrayFlags): Graphic3dArrayOfPoints {.
    constructor, importcpp: "Graphic3d_ArrayOfPoints(@)",
    header: "Graphic3d_ArrayOfPoints.hxx".}
proc constructGraphic3dArrayOfPoints*(theMaxVertexs: StandardInteger; theHasVColors: StandardBoolean = standardFalse;
    theHasVNormals: StandardBoolean = standardFalse): Graphic3dArrayOfPoints {.
    constructor, importcpp: "Graphic3d_ArrayOfPoints(@)",
    header: "Graphic3d_ArrayOfPoints.hxx".}
discard "forward decl of Graphic3d_ArrayOfPoints"
type
  HandleGraphic3dArrayOfPoints* = Handle[Graphic3dArrayOfPoints]


