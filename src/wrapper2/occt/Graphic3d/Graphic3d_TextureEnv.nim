##  Created on: 1997-07-28
##  Created by: Pierre CHALAMET
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

import
  ../Standard/Standard, ../Standard/Standard_Type, Graphic3d_NameOfTextureEnv,
  Graphic3d_TextureRoot, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_TextureEnv"
discard "forward decl of Graphic3d_TextureEnv"
type
  Handle_Graphic3d_TextureEnv* = handle[Graphic3d_TextureEnv]

## ! This class provides environment texture.

type
  Graphic3d_TextureEnv* {.importcpp: "Graphic3d_TextureEnv",
                         header: "Graphic3d_TextureEnv.hxx", bycopy.} = object of Graphic3d_TextureRoot ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## an
                                                                                                 ## environment
                                                                                                 ## texture
                                                                                                 ## from
                                                                                                 ## a
                                                                                                 ## file.


proc constructGraphic3d_TextureEnv*(theFileName: TCollection_AsciiString): Graphic3d_TextureEnv {.
    constructor, importcpp: "Graphic3d_TextureEnv(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc constructGraphic3d_TextureEnv*(theName: Graphic3d_NameOfTextureEnv): Graphic3d_TextureEnv {.
    constructor, importcpp: "Graphic3d_TextureEnv(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc constructGraphic3d_TextureEnv*(thePixMap: handle[Image_PixMap]): Graphic3d_TextureEnv {.
    constructor, importcpp: "Graphic3d_TextureEnv(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc Name*(this: Graphic3d_TextureEnv): Graphic3d_NameOfTextureEnv {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_TextureEnv.hxx".}
proc NumberOfTextures*(): Standard_Integer {.
    importcpp: "Graphic3d_TextureEnv::NumberOfTextures(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc TextureName*(theRank: Standard_Integer): TCollection_AsciiString {.
    importcpp: "Graphic3d_TextureEnv::TextureName(@)",
    header: "Graphic3d_TextureEnv.hxx".}
type
  Graphic3d_TextureEnvbase_type* = Graphic3d_TextureRoot

proc get_type_name*(): cstring {.importcpp: "Graphic3d_TextureEnv::get_type_name(@)",
                              header: "Graphic3d_TextureEnv.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_TextureEnv::get_type_descriptor(@)",
    header: "Graphic3d_TextureEnv.hxx".}
proc DynamicType*(this: Graphic3d_TextureEnv): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_TextureEnv.hxx".}