##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Auxiliary tool for buffered reading of lines from input stream.

type
  StandardReadLineBuffer* {.importcpp: "Standard_ReadLineBuffer",
                           header: "Standard_ReadLineBuffer.hxx", bycopy.} = object ## !
                                                                               ## Constructor
                                                                               ## with
                                                                               ## initialization.
                                                                               ## !
                                                                               ## @param
                                                                               ## theMaxBufferSizeBytes
                                                                               ## the
                                                                               ## length
                                                                               ## of
                                                                               ## buffer
                                                                               ## to
                                                                               ## read
                                                                               ## (in
                                                                               ## bytes)
                                                                               ## !
                                                                               ## Read
                                                                               ## from
                                                                               ## stl
                                                                               ## stream.
                                                                               ## !
                                                                               ## @return
                                                                               ## true
                                                                               ## if
                                                                               ## reading
                                                                               ## was
                                                                               ## finished
                                                                               ## without
                                                                               ## errors.
    ## !< Temp read buffer
    ## !< Part of last string of myReadBuffer
    ## !< Flag to use myReadBufferLastStr during next line reading
    ## !< Flag to process of the special multi-line case at the end of the line
    ## !< Flag to put gap space while joining lines in multi-line syntax
    ## !< Current position in myReadBuffer
    ## !< The number of characters that were read last time from myReadBuffer.


proc constructStandardReadLineBuffer*(theMaxBufferSizeBytes: csize_t): StandardReadLineBuffer {.
    cdecl, constructor, importcpp: "Standard_ReadLineBuffer(@)", header: "Standard_ReadLineBuffer.hxx".}
proc destroyStandardReadLineBuffer*(this: var StandardReadLineBuffer) {.cdecl,
    importcpp: "#.~Standard_ReadLineBuffer()", header: "Standard_ReadLineBuffer.hxx".}
proc clear*(this: var StandardReadLineBuffer) {.cdecl, importcpp: "Clear",
    header: "Standard_ReadLineBuffer.hxx".}
proc readLine*[StreamT](this: var StandardReadLineBuffer; theStream: var StreamT;
                       theLineLength: var csize_t): cstring {.cdecl,
    importcpp: "ReadLine", header: "Standard_ReadLineBuffer.hxx".}
proc readLine*[StreamT](this: var StandardReadLineBuffer; theStream: var StreamT;
                       theLineLength: var csize_t; theReadData: var int): cstring {.
    cdecl, importcpp: "ReadLine", header: "Standard_ReadLineBuffer.hxx".}
proc toPutGapInMultiline*(this: StandardReadLineBuffer): bool {.noSideEffect, cdecl,
    importcpp: "ToPutGapInMultiline", header: "Standard_ReadLineBuffer.hxx".}
proc setMultilineMode*(this: var StandardReadLineBuffer; theMultilineMode: bool;
                      theToPutGap: bool = true) {.cdecl,
    importcpp: "SetMultilineMode", header: "Standard_ReadLineBuffer.hxx".}