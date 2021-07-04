##  Created on: 1992-04-07
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_NameEntity"
discard "forward decl of IGESData_NameEntity"
type
  Handle_IGESData_NameEntity* = handle[IGESData_NameEntity]

## ! a NameEntity is a kind of IGESEntity which can provide a Name
## ! under alphanumeric (String) form, from Properties list
## ! an effective Name entity must inherit it

type
  IGESData_NameEntity* {.importcpp: "IGESData_NameEntity",
                        header: "IGESData_NameEntity.hxx", bycopy.} = object of IGESData_IGESEntity ##
                                                                                             ## !
                                                                                             ## Retyrns
                                                                                             ## the
                                                                                             ## alphanumeric
                                                                                             ## value
                                                                                             ## of
                                                                                             ## the
                                                                                             ## Name,
                                                                                             ## to
                                                                                             ## be
                                                                                             ## defined


proc Value*(this: IGESData_NameEntity): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Value", header: "IGESData_NameEntity.hxx".}
type
  IGESData_NameEntitybase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESData_NameEntity::get_type_name(@)",
                              header: "IGESData_NameEntity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_NameEntity::get_type_descriptor(@)",
    header: "IGESData_NameEntity.hxx".}
proc DynamicType*(this: IGESData_NameEntity): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_NameEntity.hxx".}