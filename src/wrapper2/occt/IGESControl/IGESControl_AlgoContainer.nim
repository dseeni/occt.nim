##  Created on: 2000-02-08
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESToBRep/IGESToBRep_AlgoContainer

discard "forward decl of IGESControl_AlgoContainer"
discard "forward decl of IGESControl_AlgoContainer"
type
  Handle_IGESControl_AlgoContainer* = handle[IGESControl_AlgoContainer]
  IGESControl_AlgoContainer* {.importcpp: "IGESControl_AlgoContainer",
                              header: "IGESControl_AlgoContainer.hxx", bycopy.} = object of IGESToBRep_AlgoContainer ##
                                                                                                              ## !
                                                                                                              ## Empty
                                                                                                              ## constructor


proc constructIGESControl_AlgoContainer*(): IGESControl_AlgoContainer {.
    constructor, importcpp: "IGESControl_AlgoContainer(@)",
    header: "IGESControl_AlgoContainer.hxx".}
type
  IGESControl_AlgoContainerbase_type* = IGESToBRep_AlgoContainer

proc get_type_name*(): cstring {.importcpp: "IGESControl_AlgoContainer::get_type_name(@)",
                              header: "IGESControl_AlgoContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESControl_AlgoContainer::get_type_descriptor(@)",
    header: "IGESControl_AlgoContainer.hxx".}
proc DynamicType*(this: IGESControl_AlgoContainer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESControl_AlgoContainer.hxx".}