##  Created on: 2007-05-29
##  Created by: Vlad Romashko
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
discard "forward decl of BinObjMgt_Persistent"
discard "forward decl of BinMDataStd_BooleanArrayDriver"
discard "forward decl of BinMDataStd_BooleanArrayDriver"
type
  HandleC1C1* = Handle[BinMDataStdBooleanArrayDriver]
  BinMDataStdBooleanArrayDriver* {.importcpp: "BinMDataStd_BooleanArrayDriver",
                                  header: "BinMDataStd_BooleanArrayDriver.hxx",
                                  bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdBooleanArrayDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdBooleanArrayDriver {.
    constructor, importcpp: "BinMDataStd_BooleanArrayDriver(@)",
    header: "BinMDataStd_BooleanArrayDriver.hxx".}
proc newEmpty*(this: BinMDataStdBooleanArrayDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "BinMDataStd_BooleanArrayDriver.hxx".}
proc paste*(this: BinMDataStdBooleanArrayDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_BooleanArrayDriver.hxx".}
proc paste*(this: BinMDataStdBooleanArrayDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_BooleanArrayDriver.hxx".}
type
  BinMDataStdBooleanArrayDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_BooleanArrayDriver::get_type_name(@)",
                            header: "BinMDataStd_BooleanArrayDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_BooleanArrayDriver::get_type_descriptor(@)",
    header: "BinMDataStd_BooleanArrayDriver.hxx".}
proc dynamicType*(this: BinMDataStdBooleanArrayDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_BooleanArrayDriver.hxx".}
























