##  Created on: 2015-12-15
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Ax1"
discard "forward decl of Graphic3d_SequenceOfHClipPlane"
type
  SelectMgrViewClipRange* {.importcpp: "SelectMgr_ViewClipRange",
                           header: "SelectMgr_ViewClipRange.hxx", bycopy.} = object ## !
                                                                               ## Creates
                                                                               ## an
                                                                               ## empty
                                                                               ## clip
                                                                               ## range.
                                                                               ## !
                                                                               ## Clears
                                                                               ## clipping
                                                                               ## range.


proc constructSelectMgrViewClipRange*(): SelectMgrViewClipRange {.constructor,
    importcpp: "SelectMgr_ViewClipRange(@)", header: "SelectMgr_ViewClipRange.hxx".}
proc isClipped*(this: SelectMgrViewClipRange; theDepth: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsClipped", header: "SelectMgr_ViewClipRange.hxx".}
proc getNearestDepth*(this: SelectMgrViewClipRange; theRange: BndRange;
                     theDepth: var StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "GetNearestDepth", header: "SelectMgr_ViewClipRange.hxx".}
proc setVoid*(this: var SelectMgrViewClipRange) {.importcpp: "SetVoid",
    header: "SelectMgr_ViewClipRange.hxx".}
proc addClippingPlanes*(this: var SelectMgrViewClipRange;
                       thePlanes: Graphic3dSequenceOfHClipPlane; thePickRay: GpAx1) {.
    importcpp: "AddClippingPlanes", header: "SelectMgr_ViewClipRange.hxx".}
proc changeUnclipRange*(this: var SelectMgrViewClipRange): var BndRange {.
    importcpp: "ChangeUnclipRange", header: "SelectMgr_ViewClipRange.hxx".}
proc addClipSubRange*(this: var SelectMgrViewClipRange; theRange: BndRange) {.
    importcpp: "AddClipSubRange", header: "SelectMgr_ViewClipRange.hxx".}
proc dumpJson*(this: SelectMgrViewClipRange; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_ViewClipRange.hxx".}

