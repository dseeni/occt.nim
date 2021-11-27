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

## ! Defines interface for OpenGL state.

type
  OpenGlStateInterface* {.importcpp: "OpenGl_StateInterface",
                         header: "OpenGl_ShaderStates.hxx", bycopy.} = object ## ! Creates new state.
    ## !< current state index


proc constructOpenGlStateInterface*(): OpenGlStateInterface {.constructor,
    importcpp: "OpenGl_StateInterface(@)", header: "OpenGl_ShaderStates.hxx".}
proc index*(this: OpenGlStateInterface): StandardSize {.noSideEffect,
    importcpp: "Index", header: "OpenGl_ShaderStates.hxx".}
proc update*(this: var OpenGlStateInterface) {.importcpp: "Update",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT projection transformation.

type
  OpenGlProjectionState* {.importcpp: "OpenGl_ProjectionState",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## uninitialized
                                                                                                ## projection
                                                                                                ## state.
    ## !< OCCT projection matrix
    ## !< Inverse of OCCT projection matrix
    ## !< Is inversed matrix outdated?


proc constructOpenGlProjectionState*(): OpenGlProjectionState {.constructor,
    importcpp: "OpenGl_ProjectionState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlProjectionState; theProjectionMatrix: OpenGlMat4) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc projectionMatrix*(this: OpenGlProjectionState): OpenGlMat4 {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "OpenGl_ShaderStates.hxx".}
proc projectionMatrixInverse*(this: OpenGlProjectionState): OpenGlMat4 {.
    noSideEffect, importcpp: "ProjectionMatrixInverse",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT model-world transformation.

type
  OpenGlModelWorldState* {.importcpp: "OpenGl_ModelWorldState",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## uninitialized
                                                                                                ## model-world
                                                                                                ## state.
    ## !< OCCT model-world matrix
    ## !< Inverse of OCCT model-world matrix
    ## !< Is inversed matrix outdated?


proc constructOpenGlModelWorldState*(): OpenGlModelWorldState {.constructor,
    importcpp: "OpenGl_ModelWorldState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlModelWorldState; theModelWorldMatrix: OpenGlMat4) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc modelWorldMatrix*(this: OpenGlModelWorldState): OpenGlMat4 {.noSideEffect,
    importcpp: "ModelWorldMatrix", header: "OpenGl_ShaderStates.hxx".}
proc modelWorldMatrixInverse*(this: OpenGlModelWorldState): OpenGlMat4 {.
    noSideEffect, importcpp: "ModelWorldMatrixInverse",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT world-view transformation.

type
  OpenGlWorldViewState* {.importcpp: "OpenGl_WorldViewState",
                         header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## uninitialized
                                                                                               ## world-view
                                                                                               ## state.
    ## !< OCCT world-view matrix
    ## !< Inverse of OCCT world-view matrix
    ## !< Is inversed matrix outdated?


proc constructOpenGlWorldViewState*(): OpenGlWorldViewState {.constructor,
    importcpp: "OpenGl_WorldViewState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlWorldViewState; theWorldViewMatrix: OpenGlMat4) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc worldViewMatrix*(this: OpenGlWorldViewState): OpenGlMat4 {.noSideEffect,
    importcpp: "WorldViewMatrix", header: "OpenGl_ShaderStates.hxx".}
proc worldViewMatrixInverse*(this: OpenGlWorldViewState): OpenGlMat4 {.noSideEffect,
    importcpp: "WorldViewMatrixInverse", header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT light sources.

type
  OpenGlLightSourceState* {.importcpp: "OpenGl_LightSourceState",
                           header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## uninitialized
                                                                                                 ## state
                                                                                                 ## of
                                                                                                 ## light
                                                                                                 ## sources.
    ## !< List of OCCT light sources
    ## !< Number of mipmap levels used in specular IBL map (0 by default or in case of using non-PBR shading model)


proc constructOpenGlLightSourceState*(): OpenGlLightSourceState {.constructor,
    importcpp: "OpenGl_LightSourceState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlLightSourceState;
         theLightSources: Handle[Graphic3dLightSet]) {.importcpp: "Set",
    header: "OpenGl_ShaderStates.hxx".}
proc lightSources*(this: OpenGlLightSourceState): Handle[Graphic3dLightSet] {.
    noSideEffect, importcpp: "LightSources", header: "OpenGl_ShaderStates.hxx".}
proc specIBLMapLevels*(this: OpenGlLightSourceState): cint {.noSideEffect,
    importcpp: "SpecIBLMapLevels", header: "OpenGl_ShaderStates.hxx".}
proc setSpecIBLMapLevels*(this: var OpenGlLightSourceState;
                         theSpecIBLMapLevels: cint) {.
    importcpp: "SetSpecIBLMapLevels", header: "OpenGl_ShaderStates.hxx".}
## ! Defines generic state of OCCT clipping state.

type
  OpenGlClippingState* {.importcpp: "OpenGl_ClippingState",
                        header: "OpenGl_ShaderStates.hxx", bycopy.} = object ## ! Creates new clipping state.
    ## !< Current state index
    ## !< Next    state index
    ## !< Stack of previous states


proc constructOpenGlClippingState*(): OpenGlClippingState {.constructor,
    importcpp: "OpenGl_ClippingState(@)", header: "OpenGl_ShaderStates.hxx".}
proc index*(this: OpenGlClippingState): StandardSize {.noSideEffect,
    importcpp: "Index", header: "OpenGl_ShaderStates.hxx".}
proc update*(this: var OpenGlClippingState) {.importcpp: "Update",
    header: "OpenGl_ShaderStates.hxx".}
proc revert*(this: var OpenGlClippingState) {.importcpp: "Revert",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines generic state of order-independent transparency rendering properties.

type
  OpenGlOitState* {.importcpp: "OpenGl_OitState",
                   header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## uniform
                                                                                         ## state.
    ## !< writing color and coverage.
    ## !< factor of depth influence to coverage.


proc constructOpenGlOitState*(): OpenGlOitState {.constructor,
    importcpp: "OpenGl_OitState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlOitState; theToEnableWrite: bool; theDepthFactor: cfloat) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc toEnableWrite*(this: OpenGlOitState): bool {.noSideEffect,
    importcpp: "ToEnableWrite", header: "OpenGl_ShaderStates.hxx".}
proc depthFactor*(this: OpenGlOitState): cfloat {.noSideEffect,
    importcpp: "DepthFactor", header: "OpenGl_ShaderStates.hxx".}
























