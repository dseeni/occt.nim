##  Created on: 2001-09-12
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
discard "forward decl of BinMDataStd_ExpressionDriver"
discard "forward decl of BinMDataStd_ExpressionDriver"
type
  HandleC1C1* = Handle[BinMDataStdExpressionDriver]

## ! Attribute Driver.

type
  BinMDataStdExpressionDriver* {.importcpp: "BinMDataStd_ExpressionDriver",
                                header: "BinMDataStd_ExpressionDriver.hxx", bycopy.} = object of BinMDF_ADriver


proc constructBinMDataStdExpressionDriver*(
    theMessageDriver: Handle[MessageMessenger]): BinMDataStdExpressionDriver {.
    constructor, importcpp: "BinMDataStd_ExpressionDriver(@)",
    header: "BinMDataStd_ExpressionDriver.hxx".}
proc newEmpty*(this: BinMDataStdExpressionDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "BinMDataStd_ExpressionDriver.hxx".}
proc paste*(this: BinMDataStdExpressionDriver; source: BinObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var BinObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_ExpressionDriver.hxx".}
proc paste*(this: BinMDataStdExpressionDriver; source: Handle[TDF_Attribute];
           target: var BinObjMgtPersistent;
           relocTable: var BinObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "BinMDataStd_ExpressionDriver.hxx".}
type
  BinMDataStdExpressionDriverbaseType* = BinMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "BinMDataStd_ExpressionDriver::get_type_name(@)",
                            header: "BinMDataStd_ExpressionDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDataStd_ExpressionDriver::get_type_descriptor(@)",
    header: "BinMDataStd_ExpressionDriver.hxx".}
proc dynamicType*(this: BinMDataStdExpressionDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "BinMDataStd_ExpressionDriver.hxx".}
























