##  Created on: 1992-09-11
##  Created by: Mireille MERCIEN
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
discard "forward decl of Standard_OutOfRange"
type
  TCollectionBaseSequence* {.importcpp: "TCollection_BaseSequence",
                            header: "TCollection_BaseSequence.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## returns
                                                                                 ## True
                                                                                 ## if
                                                                                 ## the
                                                                                 ## sequence
                                                                                 ## <me>
                                                                                 ## contains
                                                                                 ## no
                                                                                 ## elements.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Creation
                                                                                 ## of
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## sequence.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Creation
                                                                                 ## by
                                                                                 ## copy
                                                                                 ## of
                                                                                 ## existing
                                                                                 ## Sequence.
                                                                                 ##
                                                                                 ## !
                                                                                 ## Warning:
                                                                                 ## This
                                                                                 ## constructor
                                                                                 ## prints
                                                                                 ## a
                                                                                 ## warning
                                                                                 ## message.
                                                                                 ##
                                                                                 ## !
                                                                                 ## We
                                                                                 ## recommand
                                                                                 ## to
                                                                                 ## use
                                                                                 ## the
                                                                                 ## operator
                                                                                 ## =.


proc isEmpty*(this: TCollectionBaseSequence): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_BaseSequence.hxx".}
proc length*(this: TCollectionBaseSequence): int {.noSideEffect, importcpp: "Length",
    header: "TCollection_BaseSequence.hxx".}
proc reverse*(this: var TCollectionBaseSequence) {.importcpp: "Reverse",
    header: "TCollection_BaseSequence.hxx".}
proc exchange*(this: var TCollectionBaseSequence; i: int; j: int) {.
    importcpp: "Exchange", header: "TCollection_BaseSequence.hxx".}
