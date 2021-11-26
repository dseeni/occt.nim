##  Created on: 2015-05-28
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## ! Command-queue for parallel building of BVH nodes.

type
  BVH_BuildQueue* {.importcpp: "BVH_BuildQueue", header: "BVH_BuildQueue.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## BVH
                                                                                         ## build
                                                                                         ## queue.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## current
                                                                                         ## size
                                                                                         ## of
                                                                                         ## BVH
                                                                                         ## build
                                                                                         ## queue.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Queue
                                                                                         ## of
                                                                                         ## BVH
                                                                                         ## nodes
                                                                                         ## to
                                                                                         ## build.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Manages
                                                                                         ## access
                                                                                         ## serialization
                                                                                         ## of
                                                                                         ## working
                                                                                         ## threads.
    ## ! Number of active build threads.


proc newBVH_BuildQueue*(): BVH_BuildQueue {.cdecl, constructor,
    importcpp: "BVH_BuildQueue(@)", dynlib: tkmath.}
proc destroyBVH_BuildQueue*(this: var BVH_BuildQueue) {.cdecl,
    importcpp: "#.~BVH_BuildQueue()", dynlib: tkmath.}
proc size*(this: var BVH_BuildQueue): cint {.cdecl, importcpp: "Size", dynlib: tkmath.}
proc enqueue*(this: var BVH_BuildQueue; theNode: cint) {.cdecl, importcpp: "Enqueue",
    dynlib: tkmath.}
proc fetch*(this: var BVH_BuildQueue; wasBusy: var bool): cint {.cdecl,
    importcpp: "Fetch", dynlib: tkmath.}
proc hasBusyThreads*(this: var BVH_BuildQueue): bool {.cdecl,
    importcpp: "HasBusyThreads", dynlib: tkmath.}