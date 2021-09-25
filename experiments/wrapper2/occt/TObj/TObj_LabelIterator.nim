##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

## *
##  This class is a basis for OCAF based iterators.
##

type
  TObjLabelIterator* {.importcpp: "TObj_LabelIterator",
                      header: "TObj_LabelIterator.hxx", bycopy.} = object of TObjObjectIterator ## *
                                                                                         ##  Constructor
                                                                                         ##
                                                                                         ## ! Creates an Empty Iterator
                                                                                         ## *
                                                                                         ##  Constructor
                                                                                         ##
                                                                                         ## ! Creates an iterator an initialize it by theLabel and recursive flag.
                                                                                         ## ! If isRecursive is Standard_True make recursive iterations
                                                                                         ## *
                                                                                         ##  Redefined methods
                                                                                         ##
                                                                                         ## ! Returns True if there is a current Item in the iteration.
                                                                                         ## *
                                                                                         ##  Iterating methods
                                                                                         ##
                                                                                         ## ! Shifts iterator to the next object
                                                                                         ## *
                                                                                         ##  Internal methods
                                                                                         ##
                                                                                         ## ! Initialize Iterator by the theLabel
                                                                                         ## *
                                                                                         ##  Fields
                                                                                         ##
                                                                                         ## ! CASCADE RTTI
    ## !< Current node
    ## !< OCAF Child iterator
    ## !< Current Object


proc constructTObjLabelIterator*(theLabel: TDF_Label; isRecursive: bool = false): TObjLabelIterator {.
    constructor, importcpp: "TObj_LabelIterator(@)",
    header: "TObj_LabelIterator.hxx".}
proc more*(this: TObjLabelIterator): bool {.noSideEffect, importcpp: "More",
                                        header: "TObj_LabelIterator.hxx".}
proc next*(this: var TObjLabelIterator) {.importcpp: "Next",
                                      header: "TObj_LabelIterator.hxx".}
proc value*(this: TObjLabelIterator): Handle[TObjObject] {.noSideEffect,
    importcpp: "Value", header: "TObj_LabelIterator.hxx".}
proc labelValue*(this: TObjLabelIterator): TDF_Label {.noSideEffect,
    importcpp: "LabelValue", header: "TObj_LabelIterator.hxx".}
type
  TObjLabelIteratorbaseType* = TObjObjectIterator

proc getTypeName*(): cstring {.importcpp: "TObj_LabelIterator::get_type_name(@)",
                            header: "TObj_LabelIterator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_LabelIterator::get_type_descriptor(@)",
    header: "TObj_LabelIterator.hxx".}
proc dynamicType*(this: TObjLabelIterator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_LabelIterator.hxx".}
## ! Define handle class for TObj_LabelIterator

discard "forward decl of TObj_LabelIterator"
type
  HandleTObjLabelIterator* = Handle[TObjLabelIterator]

# when defined(_MSC_VER):
#   discard
