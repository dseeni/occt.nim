##  Created on: 2013-10-02
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

## ! Defines generic state of material properties.

type
  OpenGlMaterialState* {.importcpp: "OpenGl_MaterialState",
                        header: "OpenGl_MaterialState.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## new
                                                                                               ## material
                                                                                               ## state.
    ## !< front material
    ## !< back  material
    ## !< alpha cutoff value
    ## !< distinguish front/back flag
    ## !< flag for mapping a texture


proc newOpenGlMaterialState*(): OpenGlMaterialState {.cdecl, constructor,
    importcpp: "OpenGl_MaterialState(@)", dynlib: tkkxbase.}
proc set*(this: var OpenGlMaterialState; theFrontMat: OpenGlMaterial;
         theBackMat: OpenGlMaterial; theAlphaCutoff: cfloat; theToDistinguish: bool;
         theToMapTexture: bool) {.cdecl, importcpp: "Set", dynlib: tkkxbase.}
proc frontMaterial*(this: OpenGlMaterialState): OpenGlMaterial {.noSideEffect, cdecl,
    importcpp: "FrontMaterial", dynlib: tkkxbase.}
proc backMaterial*(this: OpenGlMaterialState): OpenGlMaterial {.noSideEffect, cdecl,
    importcpp: "BackMaterial", dynlib: tkkxbase.}
proc alphaCutoff*(this: OpenGlMaterialState): cfloat {.noSideEffect, cdecl,
    importcpp: "AlphaCutoff", dynlib: tkkxbase.}
proc hasAlphaCutoff*(this: OpenGlMaterialState): bool {.noSideEffect, cdecl,
    importcpp: "HasAlphaCutoff", dynlib: tkkxbase.}
proc toDistinguish*(this: OpenGlMaterialState): bool {.noSideEffect, cdecl,
    importcpp: "ToDistinguish", dynlib: tkkxbase.}
proc toMapTexture*(this: OpenGlMaterialState): bool {.noSideEffect, cdecl,
    importcpp: "ToMapTexture", dynlib: tkkxbase.}