##  Created on: 1992-11-17
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_Selection"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_Dispatch"
type
  HandleIFSelectDispatch* = Handle[IFSelectDispatch]

## ! This class allows to describe how a set of Entities has to be
## ! dispatched into resulting Packets : a Packet is a sub-set of
## ! the initial set of entities.
## !
## ! Thus, it can generate zero, one, or more Packets according
## ! input set and criterium of dispatching. And it can let apart
## ! some entities : it is the Remainder, which can be recovered
## ! by a specific Selection (RemainderFromDispatch).
## !
## ! Depending of sub-classes, a Dispatch can potentially generate
## ! a limited or not count of packet, and a remainder or none.
## !
## ! The input set is read from a specified Selection, attached to
## ! the Dispatch : the Final Selection of the Dispatch. The input
## ! is the Unique Root Entities list of the Final Selection

type
  IFSelectDispatch* {.importcpp: "IFSelect_Dispatch",
                     header: "IFSelect_Dispatch.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Sets
                                                                                      ## a
                                                                                      ## Root
                                                                                      ## Name
                                                                                      ## as
                                                                                      ## an
                                                                                      ## HAsciiString
                                                                                      ##
                                                                                      ## !
                                                                                      ## To
                                                                                      ## reset
                                                                                      ## it,
                                                                                      ## give
                                                                                      ## a
                                                                                      ## Null
                                                                                      ## Handle
                                                                                      ## (then,
                                                                                      ## a
                                                                                      ## ShareOut
                                                                                      ## will
                                                                                      ## have
                                                                                      ##
                                                                                      ## !
                                                                                      ## to
                                                                                      ## define
                                                                                      ## the
                                                                                      ## Default
                                                                                      ## Root
                                                                                      ## Name)


proc setRootName*(this: var IFSelectDispatch; name: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetRootName", header: "IFSelect_Dispatch.hxx".}
proc hasRootName*(this: IFSelectDispatch): bool {.noSideEffect, cdecl,
    importcpp: "HasRootName", header: "IFSelect_Dispatch.hxx".}
proc rootName*(this: IFSelectDispatch): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "RootName", header: "IFSelect_Dispatch.hxx".}
proc setFinalSelection*(this: var IFSelectDispatch; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "SetFinalSelection", header: "IFSelect_Dispatch.hxx".}
proc finalSelection*(this: IFSelectDispatch): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "FinalSelection", header: "IFSelect_Dispatch.hxx".}
proc selections*(this: IFSelectDispatch): IFSelectSelectionIterator {.noSideEffect,
    cdecl, importcpp: "Selections", header: "IFSelect_Dispatch.hxx".}
proc canHaveRemainder*(this: IFSelectDispatch): bool {.noSideEffect, cdecl,
    importcpp: "CanHaveRemainder", header: "IFSelect_Dispatch.hxx".}
proc limitedMax*(this: IFSelectDispatch; nbent: cint; max: var cint): bool {.
    noSideEffect, cdecl, importcpp: "LimitedMax", header: "IFSelect_Dispatch.hxx".}
proc label*(this: IFSelectDispatch): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_Dispatch.hxx".}
proc getEntities*(this: IFSelectDispatch; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "GetEntities", header: "IFSelect_Dispatch.hxx".}
proc packets*(this: IFSelectDispatch; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect, cdecl,
    importcpp: "Packets", header: "IFSelect_Dispatch.hxx".}
proc packeted*(this: IFSelectDispatch; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Packeted", header: "IFSelect_Dispatch.hxx".}
proc remainder*(this: IFSelectDispatch; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Remainder", header: "IFSelect_Dispatch.hxx".}