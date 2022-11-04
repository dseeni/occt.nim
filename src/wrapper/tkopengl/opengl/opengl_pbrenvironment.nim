##  Author: Ilya Khramov
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! This class contains specular and diffuse maps required for Image Base Lighting (IBL) in PBR shading model with it's generation methods.

type
  OpenGlPBREnvironment* {.importcpp: "OpenGl_PBREnvironment",
                         header: "OpenGl_PBREnvironment.hxx", bycopy.} = object of OpenGlNamedResource ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## and
                                                                                                ## initializes
                                                                                                ## new
                                                                                                ## PBR
                                                                                                ## environment.
                                                                                                ## It
                                                                                                ## is
                                                                                                ## the
                                                                                                ## only
                                                                                                ## way
                                                                                                ## to
                                                                                                ## create
                                                                                                ## OpenGl_PBREnvironment.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theCtx
                                                                                                ## OpenGL
                                                                                                ## context
                                                                                                ## where
                                                                                                ## environment
                                                                                                ## will
                                                                                                ## be
                                                                                                ## created
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## thePow2Size
                                                                                                ## final
                                                                                                ## size
                                                                                                ## of
                                                                                                ## texture's
                                                                                                ## sides
                                                                                                ## can
                                                                                                ## be
                                                                                                ## calculated
                                                                                                ## as
                                                                                                ## 2^thePow2Size;
                                                                                                ##
                                                                                                ## !
                                                                                                ## if
                                                                                                ## thePow2Size
                                                                                                ## less
                                                                                                ## than
                                                                                                ## 1
                                                                                                ## it
                                                                                                ## will
                                                                                                ## be
                                                                                                ## set
                                                                                                ## to
                                                                                                ## 1
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theSpecMapLevelsNum
                                                                                                ## number
                                                                                                ## of
                                                                                                ## mipmap
                                                                                                ## levels
                                                                                                ## used
                                                                                                ## in
                                                                                                ## specular
                                                                                                ## IBL
                                                                                                ## map;
                                                                                                ##
                                                                                                ## !
                                                                                                ## if
                                                                                                ## theSpecMapLevelsNum
                                                                                                ## less
                                                                                                ## than
                                                                                                ## 2
                                                                                                ## or
                                                                                                ## less
                                                                                                ## than
                                                                                                ## Pow2Size
                                                                                                ## +
                                                                                                ## 1
                                                                                                ## it
                                                                                                ## will
                                                                                                ## be
                                                                                                ## set
                                                                                                ## to
                                                                                                ## the
                                                                                                ## corresponding
                                                                                                ## values.
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theId
                                                                                                ## OpenGl_Resource
                                                                                                ## name
                                                                                                ##
                                                                                                ## !
                                                                                                ## @return
                                                                                                ## handle
                                                                                                ## to
                                                                                                ## created
                                                                                                ## PBR
                                                                                                ## environment
                                                                                                ## or
                                                                                                ## NULL
                                                                                                ## handle
                                                                                                ## in
                                                                                                ## case
                                                                                                ## of
                                                                                                ## fail
                                                                                                ##
                                                                                                ## !
                                                                                                ## Binds
                                                                                                ## diffuse
                                                                                                ## and
                                                                                                ## specular
                                                                                                ## IBL
                                                                                                ## maps
                                                                                                ## to
                                                                                                ## the
                                                                                                ## corresponding
                                                                                                ## texture
                                                                                                ## units.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## new
                                                                                                ## PBR
                                                                                                ## environment.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Parameters
                                                                                                ## and
                                                                                                ## logic
                                                                                                ## are
                                                                                                ## described
                                                                                                ## in
                                                                                                ## 'Create'
                                                                                                ## method
                                                                                                ## documentation.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Enum
                                                                                                ## classified
                                                                                                ## the
                                                                                                ## type
                                                                                                ## of
                                                                                                ## IBL
                                                                                                ## map
    ## !< size of IBL maps sides (real size can be calculated as 2^myPow2Size)
    ## !< number of mipmap levels used in specular IBL map
    ## !< IBL maps
    ## !< vertex buffer object of screen rectangular
    ## !< frame buffer object to generate or clear IBL maps
    ## !< completeness of PBR environment
    ## !< indicates whether IBL map's textures have to be bound or it is not obligate


proc create*(theCtx: Handle[OpenGlContext]; thePow2Size: cuint = 9;
            theSpecMapLevelsNum: cuint = 6;
            theId: TCollectionAsciiString = "PBREnvironment"): Handle[
    OpenGlPBREnvironment] {.cdecl, importcpp: "OpenGl_PBREnvironment::Create(@)",
                           dynlib: tkkxbase.}
proc `bind`*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Bind", dynlib: tkkxbase.}
proc unbind*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Unbind", dynlib: tkkxbase.}
proc clear*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext];
           theColor: Graphic3dVec3 = graphic3dVec3(1.f)) {.cdecl, importcpp: "Clear",
    dynlib: tkkxbase.}
proc bake*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext];
          theEnvMap: Handle[OpenGlTexture]; theZIsInverted: bool = false;
          theIsTopDown: bool = true; theDiffMapNbSamples: csize_t = 1024;
          theSpecMapNbSamples: csize_t = 256;
          theProbability: StandardShortReal = 0.99f) {.cdecl, importcpp: "Bake",
    dynlib: tkkxbase.}
proc specMapLevelsNumber*(this: OpenGlPBREnvironment): cuint {.noSideEffect, cdecl,
    importcpp: "SpecMapLevelsNumber", dynlib: tkkxbase.}
proc pow2Size*(this: OpenGlPBREnvironment): cuint {.noSideEffect, cdecl,
    importcpp: "Pow2Size", dynlib: tkkxbase.}
proc sizesAreDifferent*(this: OpenGlPBREnvironment; thePow2Size: cuint;
                       theSpecMapLevelsNumber: cuint): bool {.noSideEffect, cdecl,
    importcpp: "SizesAreDifferent", dynlib: tkkxbase.}
proc isNeededToBeBound*(this: OpenGlPBREnvironment): bool {.noSideEffect, cdecl,
    importcpp: "IsNeededToBeBound", dynlib: tkkxbase.}
proc release*(this: var OpenGlPBREnvironment; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlPBREnvironment): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc isComplete*(this: OpenGlPBREnvironment): bool {.noSideEffect, cdecl,
    importcpp: "IsComplete", dynlib: tkkxbase.}
proc destroyOpenGlPBREnvironment*(this: var OpenGlPBREnvironment) {.cdecl,
    importcpp: "#.~OpenGl_PBREnvironment()", dynlib: tkkxbase.}