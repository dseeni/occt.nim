##  Created on: 2013-09-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## ! Forward declaration
## ! This class is responsible for managing shader objects.

type
  Graphic3dShaderObject* {.importcpp: "Graphic3d_ShaderObject",
                          header: "Graphic3d_ShaderObject.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## new
                                                                                                ## shader
                                                                                                ## object
                                                                                                ## of
                                                                                                ## specified
                                                                                                ## type.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Releases
                                                                                                ## resources
                                                                                                ## of
                                                                                                ## shader
                                                                                                ## object.
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## type
                                                                                                ## of
                                                                                                ## shader
                                                                                                ## object.
    ## !< the ID of shader object
    ## !< the source code of shader object
    ## !< the path to shader source (may be empty)


proc destroyGraphic3dShaderObject*(this: var Graphic3dShaderObject) {.
    importcpp: "#.~Graphic3d_ShaderObject()", header: "Graphic3d_ShaderObject.hxx".}
proc isDone*(this: Graphic3dShaderObject): bool {.noSideEffect, importcpp: "IsDone",
    header: "Graphic3d_ShaderObject.hxx".}
proc path*(this: Graphic3dShaderObject): OSD_Path {.noSideEffect, importcpp: "Path",
    header: "Graphic3d_ShaderObject.hxx".}
proc source*(this: Graphic3dShaderObject): TCollectionAsciiString {.noSideEffect,
    importcpp: "Source", header: "Graphic3d_ShaderObject.hxx".}
proc `type`*(this: Graphic3dShaderObject): Graphic3dTypeOfShaderObject {.
    noSideEffect, importcpp: "Type", header: "Graphic3d_ShaderObject.hxx".}
proc getId*(this: Graphic3dShaderObject): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_ShaderObject.hxx".}
proc createFromFile*(theType: Graphic3dTypeOfShaderObject;
                    thePath: TCollectionAsciiString): Handle[Graphic3dShaderObject] {.
    importcpp: "Graphic3d_ShaderObject::CreateFromFile(@)",
    header: "Graphic3d_ShaderObject.hxx".}
proc createFromSource*(theType: Graphic3dTypeOfShaderObject;
                      theSource: TCollectionAsciiString): Handle[
    Graphic3dShaderObject] {.importcpp: "Graphic3d_ShaderObject::CreateFromSource(@)",
                            header: "Graphic3d_ShaderObject.hxx".}
type
  Graphic3dShaderObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ShaderObject::get_type_name(@)",
                            header: "Graphic3d_ShaderObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ShaderObject::get_type_descriptor(@)",
    header: "Graphic3d_ShaderObject.hxx".}
proc dynamicType*(this: Graphic3dShaderObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_ShaderObject.hxx".}
discard "forward decl of Graphic3d_ShaderObject"
type
  HandleGraphic3dShaderObject* = Handle[Graphic3dShaderObject]

