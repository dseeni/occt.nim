##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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

type
  IGESDimenHArray1OfGeneralNote* {.importcpp: "IGESDimen_HArray1OfGeneralNote",
                                  header: "IGESDimen_HArray1OfGeneralNote.hxx",
                                  bycopy.} = object of IGESDimenArray1OfGeneralNote


proc constructIGESDimenHArray1OfGeneralNote*(theLower: int; theUpper: int): IGESDimenHArray1OfGeneralNote {.
    constructor, importcpp: "IGESDimen_HArray1OfGeneralNote(@)",
    header: "IGESDimen_HArray1OfGeneralNote.hxx".}
proc constructIGESDimenHArray1OfGeneralNote*(theLower: int; theUpper: int;
    theValue: ValueType): IGESDimenHArray1OfGeneralNote {.constructor,
    importcpp: "IGESDimen_HArray1OfGeneralNote(@)",
    header: "IGESDimen_HArray1OfGeneralNote.hxx".}
proc constructIGESDimenHArray1OfGeneralNote*(
    theOther: IGESDimenArray1OfGeneralNote): IGESDimenHArray1OfGeneralNote {.
    constructor, importcpp: "IGESDimen_HArray1OfGeneralNote(@)",
    header: "IGESDimen_HArray1OfGeneralNote.hxx".}
proc array1*(this: IGESDimenHArray1OfGeneralNote): IGESDimenArray1OfGeneralNote {.
    noSideEffect, importcpp: "Array1", header: "IGESDimen_HArray1OfGeneralNote.hxx".}
proc changeArray1*(this: var IGESDimenHArray1OfGeneralNote): var IGESDimenArray1OfGeneralNote {.
    importcpp: "ChangeArray1", header: "IGESDimen_HArray1OfGeneralNote.hxx".}
type
  IGESDimenHArray1OfGeneralNotebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESDimen_HArray1OfGeneralNote::get_type_name(@)",
                            header: "IGESDimen_HArray1OfGeneralNote.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_HArray1OfGeneralNote::get_type_descriptor(@)",
    header: "IGESDimen_HArray1OfGeneralNote.hxx".}
proc dynamicType*(this: IGESDimenHArray1OfGeneralNote): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_HArray1OfGeneralNote.hxx".}
