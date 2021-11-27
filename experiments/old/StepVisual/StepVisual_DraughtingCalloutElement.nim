##  Created on: 2015-10-29
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepVisual_AnnotationCurveOccurrence"
discard "forward decl of StepVisual_AnnotationFillAreaOccurrence"
discard "forward decl of StepVisual_AnnotationTextOccurrence"
discard "forward decl of StepVisual_TessellatedAnnotationOccurrence"
type
  StepVisualDraughtingCalloutElement* {.importcpp: "StepVisual_DraughtingCalloutElement", header: "StepVisual_DraughtingCalloutElement.hxx",
                                       bycopy.} = object of StepDataSelectType


proc `new`*(this: var StepVisualDraughtingCalloutElement; theSize: csize_t): pointer {.
    importcpp: "StepVisual_DraughtingCalloutElement::operator new",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc `delete`*(this: var StepVisualDraughtingCalloutElement; theAddress: pointer) {.
    importcpp: "StepVisual_DraughtingCalloutElement::operator delete",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc `new[]`*(this: var StepVisualDraughtingCalloutElement; theSize: csize_t): pointer {.
    importcpp: "StepVisual_DraughtingCalloutElement::operator new[]",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc `delete[]`*(this: var StepVisualDraughtingCalloutElement; theAddress: pointer) {.
    importcpp: "StepVisual_DraughtingCalloutElement::operator delete[]",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc `new`*(this: var StepVisualDraughtingCalloutElement; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepVisual_DraughtingCalloutElement::operator new", header: "StepVisual_DraughtingCalloutElement.hxx".}
proc `delete`*(this: var StepVisualDraughtingCalloutElement; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_DraughtingCalloutElement::operator delete",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc constructStepVisualDraughtingCalloutElement*(): StepVisualDraughtingCalloutElement {.
    constructor, importcpp: "StepVisual_DraughtingCalloutElement(@)",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc caseNum*(this: StepVisualDraughtingCalloutElement;
             ent: Handle[StandardTransient]): int {.noSideEffect,
    importcpp: "CaseNum", header: "StepVisual_DraughtingCalloutElement.hxx".}
proc annotationCurveOccurrence*(this: StepVisualDraughtingCalloutElement): Handle[
    StepVisualAnnotationCurveOccurrence] {.noSideEffect,
    importcpp: "AnnotationCurveOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc annotationTextOccurrence*(this: StepVisualDraughtingCalloutElement): Handle[
    StepVisualAnnotationTextOccurrence] {.noSideEffect,
    importcpp: "AnnotationTextOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc tessellatedAnnotationOccurrence*(this: StepVisualDraughtingCalloutElement): Handle[
    StepVisualTessellatedAnnotationOccurrence] {.noSideEffect,
    importcpp: "TessellatedAnnotationOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}
proc annotationFillAreaOccurrence*(this: StepVisualDraughtingCalloutElement): Handle[
    StepVisualAnnotationFillAreaOccurrence] {.noSideEffect,
    importcpp: "AnnotationFillAreaOccurrence",
    header: "StepVisual_DraughtingCalloutElement.hxx".}