##  Created on: 2002-10-29
##  Created by: Michael SAZONOV
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

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of BinMDF_ADriver"
discard "forward decl of BinMDF_ADriver"
type
  HandleBinMDF_ADriver* = Handle[BinMDF_ADriver]

## ! Attribute Storage/Retrieval Driver.

type
  BinMDF_ADriver* {.importcpp: "BinMDF_ADriver", header: "BinMDF_ADriver.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## new
                                                                                                            ## attribute
                                                                                                            ## from
                                                                                                            ## TDF.


proc newEmpty*(this: BinMDF_ADriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "BinMDF_ADriver.hxx".}
proc sourceType*(this: BinMDF_ADriver): Handle[StandardType] {.noSideEffect,
    importcpp: "SourceType", header: "BinMDF_ADriver.hxx".}
proc typeName*(this: BinMDF_ADriver): TCollectionAsciiString {.noSideEffect,
    importcpp: "TypeName", header: "BinMDF_ADriver.hxx".}
proc paste*(this: BinMDF_ADriver; aSource: BinObjMgtPersistent;
           aTarget: Handle[TDF_Attribute];
           aRelocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_ADriver.hxx".}
proc paste*(this: BinMDF_ADriver; aSource: Handle[TDF_Attribute];
           aTarget: var BinObjMgtPersistent;
           aRelocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDF_ADriver.hxx".}
proc messageDriver*(this: BinMDF_ADriver): Handle[MessageMessenger] {.noSideEffect,
    importcpp: "MessageDriver", header: "BinMDF_ADriver.hxx".}
type
  BinMDF_ADriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BinMDF_ADriver::get_type_name(@)",
                            header: "BinMDF_ADriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDF_ADriver::get_type_descriptor(@)",
    header: "BinMDF_ADriver.hxx".}
proc dynamicType*(this: BinMDF_ADriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BinMDF_ADriver.hxx".}
