##  Created by: DAUTRY Philippe
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

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDF_DeltaOnModification"
type
  HandleC1C1* = Handle[TDF_DeltaOnModification]

## ! This class provides default services for an
## ! AttributeDelta on a MODIFICATION action.
## !
## ! Applying this AttributeDelta means GOING BACK to
## ! the attribute previously registered state.

type
  TDF_DeltaOnModification* {.importcpp: "TDF_DeltaOnModification",
                            header: "TDF_DeltaOnModification.hxx", bycopy.} = object of TDF_AttributeDelta ##
                                                                                                    ## !
                                                                                                    ## Applies
                                                                                                    ## the
                                                                                                    ## delta
                                                                                                    ## to
                                                                                                    ## the
                                                                                                    ## attribute.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## a
                                                                                                    ## TDF_DeltaOnModification.


proc apply*(this: var TDF_DeltaOnModification) {.importcpp: "Apply",
    header: "TDF_DeltaOnModification.hxx".}
type
  TDF_DeltaOnModificationbaseType* = TDF_AttributeDelta

proc getTypeName*(): cstring {.importcpp: "TDF_DeltaOnModification::get_type_name(@)",
                            header: "TDF_DeltaOnModification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_DeltaOnModification::get_type_descriptor(@)",
    header: "TDF_DeltaOnModification.hxx".}
proc dynamicType*(this: TDF_DeltaOnModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TDF_DeltaOnModification.hxx".}

























