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
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDataStd_ExpressionDriver"
discard "forward decl of XmlMDataStd_ExpressionDriver"
type
  HandleC1C1* = Handle[XmlMDataStdExpressionDriver]

## ! Attribute Driver.

type
  XmlMDataStdExpressionDriver* {.importcpp: "XmlMDataStd_ExpressionDriver",
                                header: "XmlMDataStd_ExpressionDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdExpressionDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataStdExpressionDriver {.
    constructor, importcpp: "XmlMDataStd_ExpressionDriver(@)",
    header: "XmlMDataStd_ExpressionDriver.hxx".}
proc newEmpty*(this: XmlMDataStdExpressionDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMDataStd_ExpressionDriver.hxx".}
proc paste*(this: XmlMDataStdExpressionDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_ExpressionDriver.hxx".}
proc paste*(this: XmlMDataStdExpressionDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_ExpressionDriver.hxx".}
type
  XmlMDataStdExpressionDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_ExpressionDriver::get_type_name(@)",
                            header: "XmlMDataStd_ExpressionDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_ExpressionDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_ExpressionDriver.hxx".}
proc dynamicType*(this: XmlMDataStdExpressionDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_ExpressionDriver.hxx".}
























