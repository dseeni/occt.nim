##  Created on : Thu May 14 15:13:19 2020
##  Created by: Igor KHOZHANOV
##  Generator:	Express (EXPRESS -> CASCADE/XSTEP Translator) V2.0
##  Copyright (c) Open CASCADE 2020
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_SurfaceStyleReflectanceAmbient"
discard "forward decl of StepVisual_SurfaceStyleTransparent"
type
  StepVisualRenderingPropertiesSelect* {.importcpp: "StepVisual_RenderingPropertiesSelect", header: "StepVisual_RenderingPropertiesSelect.hxx",
                                        bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualRenderingPropertiesSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_RenderingPropertiesSelect::operator new",
    header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc `delete`*(this: var StepVisualRenderingPropertiesSelect; theAddress: pointer) {.
    importcpp: "StepVisual_RenderingPropertiesSelect::operator delete",
    header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc `new[]`*(this: var StepVisualRenderingPropertiesSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_RenderingPropertiesSelect::operator new[]",
    header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc `delete[]`*(this: var StepVisualRenderingPropertiesSelect; theAddress: pointer) {.
    importcpp: "StepVisual_RenderingPropertiesSelect::operator delete[]",
    header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc `new`*(this: var StepVisualRenderingPropertiesSelect; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepVisual_RenderingPropertiesSelect::operator new", header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc `delete`*(this: var StepVisualRenderingPropertiesSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_RenderingPropertiesSelect::operator delete",
    header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc constructStepVisualRenderingPropertiesSelect*(): StepVisualRenderingPropertiesSelect {.
    constructor, importcpp: "StepVisual_RenderingPropertiesSelect(@)",
    header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc caseNum*(this: StepVisualRenderingPropertiesSelect;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc surfaceStyleReflectanceAmbient*(this: StepVisualRenderingPropertiesSelect): Handle[
    StepVisualSurfaceStyleReflectanceAmbient] {.noSideEffect,
    importcpp: "SurfaceStyleReflectanceAmbient",
    header: "StepVisual_RenderingPropertiesSelect.hxx".}
proc surfaceStyleTransparent*(this: StepVisualRenderingPropertiesSelect): Handle[
    StepVisualSurfaceStyleTransparent] {.noSideEffect,
                                        importcpp: "SurfaceStyleTransparent", header: "StepVisual_RenderingPropertiesSelect.hxx".}