##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! XR action definition.

type
  AspectXRAction* {.importcpp: "Aspect_XRAction", header: "Aspect_XRAction.hxx",
                   bycopy.} = object of StandardTransient ## ! Return action id.
    ## !< action id
    ## !< action handle
    ## !< action type

  AspectXRActionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Aspect_XRAction::get_type_name(@)",
                            header: "Aspect_XRAction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_XRAction::get_type_descriptor(@)",
    header: "Aspect_XRAction.hxx".}
proc dynamicType*(this: AspectXRAction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_XRAction.hxx".}
proc id*(this: AspectXRAction): TCollectionAsciiString {.noSideEffect,
    importcpp: "Id", header: "Aspect_XRAction.hxx".}
proc `type`*(this: AspectXRAction): AspectXRActionType {.noSideEffect,
    importcpp: "Type", header: "Aspect_XRAction.hxx".}
proc isValid*(this: AspectXRAction): bool {.noSideEffect, importcpp: "IsValid",
                                        header: "Aspect_XRAction.hxx".}
proc rawHandle*(this: AspectXRAction): uint64T {.noSideEffect,
    importcpp: "RawHandle", header: "Aspect_XRAction.hxx".}
proc setRawHandle*(this: var AspectXRAction; theHande: uint64T) {.
    importcpp: "SetRawHandle", header: "Aspect_XRAction.hxx".}
proc constructAspectXRAction*(theId: TCollectionAsciiString;
                             theType: AspectXRActionType): AspectXRAction {.
    constructor, importcpp: "Aspect_XRAction(@)", header: "Aspect_XRAction.hxx".}
## ! Map of actions with action Id as a key.

type
  AspectXRActionMap* = NCollectionIndexedDataMap[TCollectionAsciiString,
      Handle[AspectXRAction], TCollectionAsciiString]


























