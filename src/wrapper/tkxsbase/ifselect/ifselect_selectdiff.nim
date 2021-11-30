##  Created on: 1992-11-18
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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectDiff"
type
  HandleIFSelectSelectDiff* = Handle[IFSelectSelectDiff]

## ! A SelectDiff keeps the entities from a Selection, the Main
## ! Input, which are not listed by the Second Input

type
  IFSelectSelectDiff* {.importcpp: "IFSelect_SelectDiff",
                       header: "IFSelect_SelectDiff.hxx", bycopy.} = object of IFSelectSelectControl ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## SelectDiff
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## always
                                                                                              ## True,
                                                                                              ## because
                                                                                              ## RootResult
                                                                                              ## gives
                                                                                              ## a
                                                                                              ## Unique
                                                                                              ## list


proc newIFSelectSelectDiff*(): IFSelectSelectDiff {.cdecl, constructor,
    importcpp: "IFSelect_SelectDiff(@)", header: "IFSelect_SelectDiff.hxx".}
proc rootResult*(this: IFSelectSelectDiff; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectDiff.hxx".}
proc label*(this: IFSelectSelectDiff): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Label", header: "IFSelect_SelectDiff.hxx".}