##  Created on: 1993-05-05
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../IGESData/IGESData_Protocol,
  ../Standard/Standard_Integer, ../Standard/Standard_Type

discard "forward decl of Interface_Protocol"
discard "forward decl of IGESDraw_Protocol"
discard "forward decl of IGESDraw_Protocol"
type
  Handle_IGESDraw_Protocol* = handle[IGESDraw_Protocol]

## ! Description of Protocol for IGESDraw

type
  IGESDraw_Protocol* {.importcpp: "IGESDraw_Protocol",
                      header: "IGESDraw_Protocol.hxx", bycopy.} = object of IGESData_Protocol


proc constructIGESDraw_Protocol*(): IGESDraw_Protocol {.constructor,
    importcpp: "IGESDraw_Protocol(@)", header: "IGESDraw_Protocol.hxx".}
proc NbResources*(this: IGESDraw_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "IGESDraw_Protocol.hxx".}
proc Resource*(this: IGESDraw_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "IGESDraw_Protocol.hxx".}
proc TypeNumber*(this: IGESDraw_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESDraw_Protocol.hxx".}
type
  IGESDraw_Protocolbase_type* = IGESData_Protocol

proc get_type_name*(): cstring {.importcpp: "IGESDraw_Protocol::get_type_name(@)",
                              header: "IGESDraw_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_Protocol::get_type_descriptor(@)",
    header: "IGESDraw_Protocol.hxx".}
proc DynamicType*(this: IGESDraw_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_Protocol.hxx".}