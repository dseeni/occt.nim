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
discard "forward decl of BinMDataStd_RealListDriver"
discard "forward decl of BinMDataStd_RealListDriver"
type
  HandleC1C1* = Handle[BinMDataStdRealListDriver]
  BinMDataStdRealListDriver* {.importcpp: "BinMDataStd_RealListDriver",
                              header: "BinMDataStd_RealListDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdRealListDriver*(theMessageDriver: Handle[MessageMessenger]): BinMDataStdRealListDriver {.
    constructor, importcpp: "BinMDataStd_RealListDriver(@)",
    header: "BinMDataStd_RealListDriver.hxx".}
proc newEmpty*(this: BinMDataStdRealListDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_RealListDriver.hxx".}
proc paste*(this: BinMDataStdRealListDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_RealListDriver.hxx".}
proc paste*(this: BinMDataStdRealListDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_RealListDriver.hxx".}
type
  BinMDataStdRealListDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_RealListDriver::get_type_name(@)",
                            header: "BinMDataStd_RealListDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_RealListDriver::get_type_descriptor(@)",
    header: "BinMDataStd_RealListDriver.hxx".}
proc dynamicType*(this: BinMDataStdRealListDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_RealListDriver.hxx".}
























