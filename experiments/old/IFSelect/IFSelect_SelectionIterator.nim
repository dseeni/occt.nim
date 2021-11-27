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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IFSelect_Selection"
type
  IFSelectSelectionIterator* {.importcpp: "IFSelect_SelectionIterator",
                              header: "IFSelect_SelectionIterator.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## iterator,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## be
                                                                                     ## filled


proc constructIFSelectSelectionIterator*(): IFSelectSelectionIterator {.
    constructor, importcpp: "IFSelect_SelectionIterator(@)",
    header: "IFSelect_SelectionIterator.hxx".}
proc constructIFSelectSelectionIterator*(sel: Handle[IFSelectSelection]): IFSelectSelectionIterator {.
    constructor, importcpp: "IFSelect_SelectionIterator(@)",
    header: "IFSelect_SelectionIterator.hxx".}
proc addFromIter*(this: var IFSelectSelectionIterator;
                 iter: var IFSelectSelectionIterator) {.importcpp: "AddFromIter",
    header: "IFSelect_SelectionIterator.hxx".}
proc addItem*(this: var IFSelectSelectionIterator; sel: Handle[IFSelectSelection]) {.
    importcpp: "AddItem", header: "IFSelect_SelectionIterator.hxx".}
proc addList*(this: var IFSelectSelectionIterator; list: IFSelectTSeqOfSelection) {.
    importcpp: "AddList", header: "IFSelect_SelectionIterator.hxx".}
proc more*(this: IFSelectSelectionIterator): bool {.noSideEffect, importcpp: "More",
    header: "IFSelect_SelectionIterator.hxx".}
proc next*(this: var IFSelectSelectionIterator) {.importcpp: "Next",
    header: "IFSelect_SelectionIterator.hxx".}
proc value*(this: IFSelectSelectionIterator): Handle[IFSelectSelection] {.
    noSideEffect, importcpp: "Value", header: "IFSelect_SelectionIterator.hxx".}
























