##  Created on: 1994-06-01
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_RebuildDrawings"
discard "forward decl of IGESSelect_RebuildDrawings"
type
  HandleC1C1* = Handle[IGESSelectRebuildDrawings]

## ! Rebuilds Drawings which were bypassed to produce new models.
## ! If a set of entities, all put into a same IGESModel, were
## ! attached to a same Drawing in the starting Model, this Modifier
## ! rebuilds the original Drawing, but only with the transferred
## ! entities. This includes that all its views are kept too, but
## ! empty; and annotations are not kept. Drawing Name is renewed.
## !
## ! If the Input Selection is present, tries to rebuild Drawings
## ! only for the selected entities. Else, tries to rebuild
## ! Drawings for all the transferred entities.

type
  IGESSelectRebuildDrawings* {.importcpp: "IGESSelect_RebuildDrawings",
                              header: "IGESSelect_RebuildDrawings.hxx", bycopy.} = object of IGESSelectModelModifier ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## an
                                                                                                              ## RebuildDrawings,
                                                                                                              ## which
                                                                                                              ## uses
                                                                                                              ## the
                                                                                                              ## system
                                                                                                              ## Date


proc constructIGESSelectRebuildDrawings*(): IGESSelectRebuildDrawings {.
    constructor, importcpp: "IGESSelect_RebuildDrawings(@)",
    header: "IGESSelect_RebuildDrawings.hxx".}
proc performing*(this: IGESSelectRebuildDrawings; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_RebuildDrawings.hxx".}
proc label*(this: IGESSelectRebuildDrawings): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_RebuildDrawings.hxx".}
type
  IGESSelectRebuildDrawingsbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_RebuildDrawings::get_type_name(@)",
                            header: "IGESSelect_RebuildDrawings.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_RebuildDrawings::get_type_descriptor(@)",
    header: "IGESSelect_RebuildDrawings.hxx".}
proc dynamicType*(this: IGESSelectRebuildDrawings): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_RebuildDrawings.hxx".}

























