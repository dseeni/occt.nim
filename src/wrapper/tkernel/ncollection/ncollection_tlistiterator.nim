##  Created on: 2002-04-23
##  Created by: Alexander KARTOMIN
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

## *
##  Purpose:     This Iterator class iterates on BaseList of TListNode and is
##               instantiated in List/Set/Queue/Stack
##  Remark:      TListIterator is internal class
##

type
  NCollectionTListIterator*[TheItemType] {.
      importcpp: "NCollection_TListIterator<\'0>",
      header: "NCollection_TListIterator.hxx", bycopy.} = object of NCollectionBaseListIterator ## ! Empty
                                                                      ## constructor - for later Init


proc newNCollectionTListIterator*[TheItemType](): NCollectionTListIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_TListIterator<\'*0>(@)", dynlib: tkernel.}
proc newNCollectionTListIterator*[TheItemType](theList: NCollectionBaseList): NCollectionTListIterator[
    TheItemType] {.cdecl, constructor,
                  importcpp: "NCollection_TListIterator<\'*0>(@)", dynlib: tkernel.}
proc more*[TheItemType](this: NCollectionTListIterator[TheItemType]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheItemType](this: var NCollectionTListIterator[TheItemType]) {.cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc value*[TheItemType](this: NCollectionTListIterator[TheItemType]): TheItemType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc value*[TheItemType](this: var NCollectionTListIterator[TheItemType]): var TheItemType {.
    cdecl, importcpp: "Value", dynlib: tkernel.}
proc changeValue*[TheItemType](this: NCollectionTListIterator[TheItemType]): var TheItemType {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkernel.}