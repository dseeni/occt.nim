##  Created on: 1995-12-06
##  Created by: Frederic MAUPAS
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

type
  StepVisualBoxCharacteristicSelect* {.importcpp: "StepVisual_BoxCharacteristicSelect", header: "StepVisual_BoxCharacteristicSelect.hxx",
                                      bycopy.} = object


proc `new`*(this: var StepVisualBoxCharacteristicSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_BoxCharacteristicSelect::operator new",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc `delete`*(this: var StepVisualBoxCharacteristicSelect; theAddress: pointer) {.
    importcpp: "StepVisual_BoxCharacteristicSelect::operator delete",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc `new[]`*(this: var StepVisualBoxCharacteristicSelect; theSize: csize_t): pointer {.
    importcpp: "StepVisual_BoxCharacteristicSelect::operator new[]",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc `delete[]`*(this: var StepVisualBoxCharacteristicSelect; theAddress: pointer) {.
    importcpp: "StepVisual_BoxCharacteristicSelect::operator delete[]",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc `new`*(this: var StepVisualBoxCharacteristicSelect; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "StepVisual_BoxCharacteristicSelect::operator new", header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc `delete`*(this: var StepVisualBoxCharacteristicSelect; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_BoxCharacteristicSelect::operator delete",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc constructStepVisualBoxCharacteristicSelect*(): StepVisualBoxCharacteristicSelect {.
    constructor, importcpp: "StepVisual_BoxCharacteristicSelect(@)",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc typeOfContent*(this: StepVisualBoxCharacteristicSelect): int {.noSideEffect,
    importcpp: "TypeOfContent", header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc setTypeOfContent*(this: var StepVisualBoxCharacteristicSelect; aType: int) {.
    importcpp: "SetTypeOfContent",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc realValue*(this: StepVisualBoxCharacteristicSelect): StandardReal {.
    noSideEffect, importcpp: "RealValue",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc setRealValue*(this: var StepVisualBoxCharacteristicSelect; aValue: StandardReal) {.
    importcpp: "SetRealValue", header: "StepVisual_BoxCharacteristicSelect.hxx".}