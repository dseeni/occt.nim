##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of StdStorage_Data"
discard "forward decl of Storage_BaseDriver"
discard "forward decl of TCollection_AsciiString"
type
  StdStorage* {.importcpp: "StdStorage", header: "StdStorage.hxx", bycopy.} = object ## !
                                                                             ## Returns the
                                                                             ## version of
                                                                             ## Storage's
                                                                             ## read/write
                                                                             ## routines


proc version*(): TCollectionAsciiString {.importcpp: "StdStorage::Version(@)",
                                       header: "StdStorage.hxx".}
proc read*(theFileName: TCollectionAsciiString; theData: var Handle[StdStorageData]): StorageError {.
    importcpp: "StdStorage::Read(@)", header: "StdStorage.hxx".}
proc read*(theDriver: Handle[StorageBaseDriver];
          theData: var Handle[StdStorageData]): StorageError {.
    importcpp: "StdStorage::Read(@)", header: "StdStorage.hxx".}
proc write*(theDriver: Handle[StorageBaseDriver]; theData: Handle[StdStorageData]): StorageError {.
    importcpp: "StdStorage::Write(@)", header: "StdStorage.hxx".}
























