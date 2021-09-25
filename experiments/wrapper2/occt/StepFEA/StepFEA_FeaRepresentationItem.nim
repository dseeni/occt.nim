##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of StepFEA_FeaRepresentationItem"
discard "forward decl of StepFEA_FeaRepresentationItem"
type
  HandleStepFEA_FeaRepresentationItem* = Handle[StepFEA_FeaRepresentationItem]

## ! Representation of STEP entity FeaRepresentationItem

type
  StepFEA_FeaRepresentationItem* {.importcpp: "StepFEA_FeaRepresentationItem",
                                  header: "StepFEA_FeaRepresentationItem.hxx",
                                  bycopy.} = object of StepReprRepresentationItem ## !
                                                                             ## Empty
                                                                             ## constructor


proc constructStepFEA_FeaRepresentationItem*(): StepFEA_FeaRepresentationItem {.
    constructor, importcpp: "StepFEA_FeaRepresentationItem(@)",
    header: "StepFEA_FeaRepresentationItem.hxx".}
type
  StepFEA_FeaRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepFEA_FeaRepresentationItem::get_type_name(@)",
                            header: "StepFEA_FeaRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepFEA_FeaRepresentationItem::get_type_descriptor(@)",
    header: "StepFEA_FeaRepresentationItem.hxx".}
proc dynamicType*(this: StepFEA_FeaRepresentationItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepFEA_FeaRepresentationItem.hxx".}
