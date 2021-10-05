const
  DefaultBlockSize:csize_t = 24600
##  Created on: 2002-04-12
##  Created by: Alexander GRIGORIEV
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

discard "forward decl of Standard_Mutex"
type
  NCollectionIncAllocator* {.importcpp: "NCollection_IncAllocator::NCollection_IncAllocator",
                            header: "NCollection_IncAllocator.hxx", bycopy.} = object of NCollectionBaseAllocator ##  The type defining the alignement of allocated objects
                                                                                                           ##  Prohibited methods
                                                                                                           ##  ----- PROTECTED CLASS IBlock -------
                                                                                                           ##  --------- PROTECTED FIELDS ---------
                                                                                                           ##  Declaration of CASCADE RTTI

  NCollectionIncAllocatoralignedT* = pointer

proc constructNCollectionIncAllocator*(theBlockSize: csize_t = DefaultBlockSize): NCollectionIncAllocator {.
    cdecl, constructor, importcpp: "NCollection_IncAllocator(@)", dynlib: tkernel.}
proc setThreadSafe*(this: var NCollectionIncAllocator; theIsThreadSafe: bool = true) {.
    cdecl, importcpp: "SetThreadSafe", dynlib: tkernel.}
proc allocate*(this: var NCollectionIncAllocator; size: csize_t): pointer {.cdecl,
    importcpp: "Allocate", dynlib: tkernel.}
proc free*(this: var NCollectionIncAllocator; anAddress: pointer) {.cdecl,
    importcpp: "Free", dynlib: tkernel.}
proc getMemSize*(this: NCollectionIncAllocator): csize_t {.noSideEffect, cdecl,
    importcpp: "GetMemSize", dynlib: tkernel.}
proc destroyNCollectionIncAllocator*(this: var NCollectionIncAllocator) {.cdecl,
    importcpp: "#.~NCollection_IncAllocator()", dynlib: tkernel.}
proc reallocate*(this: var NCollectionIncAllocator; anAddress: pointer;
                oldSize: csize_t; newSize: csize_t): pointer {.cdecl,
    importcpp: "Reallocate", dynlib: tkernel.}
proc reset*(this: var NCollectionIncAllocator; doReleaseMem: bool = true) {.
    cdecl, importcpp: "Reset", dynlib: tkernel.}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

type
  HandleNCollectionIncAllocator* = Handle[NCollectionIncAllocator]
