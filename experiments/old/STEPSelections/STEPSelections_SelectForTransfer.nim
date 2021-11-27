##  Created on: 2003-06-02
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of XSControl_TransferReader"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of STEPSelections_SelectForTransfer"
discard "forward decl of STEPSelections_SelectForTransfer"
type
  HandleC1C1* = Handle[STEPSelectionsSelectForTransfer]
  STEPSelectionsSelectForTransfer* {.importcpp: "STEPSelections_SelectForTransfer", header: "STEPSelections_SelectForTransfer.hxx",
                                    bycopy.} = object of XSControlSelectForTransfer


proc constructSTEPSelectionsSelectForTransfer*(): STEPSelectionsSelectForTransfer {.
    constructor, importcpp: "STEPSelections_SelectForTransfer(@)",
    header: "STEPSelections_SelectForTransfer.hxx".}
proc constructSTEPSelectionsSelectForTransfer*(
    tr: Handle[XSControlTransferReader]): STEPSelectionsSelectForTransfer {.
    constructor, importcpp: "STEPSelections_SelectForTransfer(@)",
    header: "STEPSelections_SelectForTransfer.hxx".}
proc rootResult*(this: STEPSelectionsSelectForTransfer; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "STEPSelections_SelectForTransfer.hxx".}
type
  STEPSelectionsSelectForTransferbaseType* = XSControlSelectForTransfer

proc getTypeName*(): cstring {.importcpp: "STEPSelections_SelectForTransfer::get_type_name(@)",
                            header: "STEPSelections_SelectForTransfer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPSelections_SelectForTransfer::get_type_descriptor(@)",
    header: "STEPSelections_SelectForTransfer.hxx".}
proc dynamicType*(this: STEPSelectionsSelectForTransfer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_SelectForTransfer.hxx".}