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
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of XmlMDataStd_BooleanListDriver"
discard "forward decl of XmlMDataStd_BooleanListDriver"
type
  HandleXmlMDataStdBooleanListDriver* = Handle[XmlMDataStdBooleanListDriver]
  XmlMDataStdBooleanListDriver* {.importcpp: "XmlMDataStd_BooleanListDriver",
                                 header: "XmlMDataStd_BooleanListDriver.hxx",
                                 bycopy.} = object of XmlMDF_ADriver


proc constructXmlMDataStdBooleanListDriver*(
    theMessageDriver: Handle[MessageMessenger]): XmlMDataStdBooleanListDriver {.
    constructor, importcpp: "XmlMDataStd_BooleanListDriver(@)",
    header: "XmlMDataStd_BooleanListDriver.hxx".}
proc newEmpty*(this: XmlMDataStdBooleanListDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty",
    header: "XmlMDataStd_BooleanListDriver.hxx".}
proc paste*(this: XmlMDataStdBooleanListDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_BooleanListDriver.hxx".}
proc paste*(this: XmlMDataStdBooleanListDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDataStd_BooleanListDriver.hxx".}
type
  XmlMDataStdBooleanListDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMDataStd_BooleanListDriver::get_type_name(@)",
                            header: "XmlMDataStd_BooleanListDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDataStd_BooleanListDriver::get_type_descriptor(@)",
    header: "XmlMDataStd_BooleanListDriver.hxx".}
proc dynamicType*(this: XmlMDataStdBooleanListDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMDataStd_BooleanListDriver.hxx".}
