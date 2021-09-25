##  Created on: 2001-09-11
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
discard "forward decl of TopLoc_Location"
discard "forward decl of XmlMXCAFDoc_LocationDriver"
discard "forward decl of XmlMXCAFDoc_LocationDriver"
type
  HandleXmlMXCAFDocLocationDriver* = Handle[XmlMXCAFDocLocationDriver]

## ! Attribute Driver.

type
  XmlMXCAFDocLocationDriver* {.importcpp: "XmlMXCAFDoc_LocationDriver",
                              header: "XmlMXCAFDoc_LocationDriver.hxx", bycopy.} = object of XmlMDF_ADriver


proc constructXmlMXCAFDocLocationDriver*(theMessageDriver: Handle[MessageMessenger]): XmlMXCAFDocLocationDriver {.
    constructor, importcpp: "XmlMXCAFDoc_LocationDriver(@)",
    header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc newEmpty*(this: XmlMXCAFDocLocationDriver): Handle[TDF_Attribute] {.
    noSideEffect, importcpp: "NewEmpty", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc paste*(this: XmlMXCAFDocLocationDriver; source: XmlObjMgtPersistent;
           target: Handle[TDF_Attribute];
           relocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc paste*(this: XmlMXCAFDocLocationDriver; source: Handle[TDF_Attribute];
           target: var XmlObjMgtPersistent;
           relocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc translate*(this: XmlMXCAFDocLocationDriver; theLoc: TopLocLocation;
               theParent: var XmlObjMgtElement;
               theMap: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Translate", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc translate*(this: XmlMXCAFDocLocationDriver; theParent: XmlObjMgtElement;
               theLoc: var TopLocLocation; theMap: var XmlObjMgtRRelocationTable): bool {.
    noSideEffect, importcpp: "Translate", header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc setSharedLocations*(this: var XmlMXCAFDocLocationDriver;
                        theLocations: TopToolsLocationSetPtr) {.
    importcpp: "SetSharedLocations", header: "XmlMXCAFDoc_LocationDriver.hxx".}
type
  XmlMXCAFDocLocationDriverbaseType* = XmlMDF_ADriver

proc getTypeName*(): cstring {.importcpp: "XmlMXCAFDoc_LocationDriver::get_type_name(@)",
                            header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMXCAFDoc_LocationDriver::get_type_descriptor(@)",
    header: "XmlMXCAFDoc_LocationDriver.hxx".}
proc dynamicType*(this: XmlMXCAFDocLocationDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "XmlMXCAFDoc_LocationDriver.hxx".}
