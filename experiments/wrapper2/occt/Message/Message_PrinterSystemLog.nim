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

discard "forward decl of Message_PrinterSystemLog"
type
  HandleC1C1* = Handle[MessagePrinterSystemLog]

## ! Implementation of a message printer associated with system log.
## ! Implemented for the following systems:
## ! - Windows, through ReportEventW().
## ! - Android, through __android_log_write().
## ! - UNIX/Linux, through syslog().

type
  MessagePrinterSystemLog* {.importcpp: "Message_PrinterSystemLog",
                            header: "Message_PrinterSystemLog.hxx", bycopy.} = object of MessagePrinter ##
                                                                                                 ## !
                                                                                                 ## Main
                                                                                                 ## constructor.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Puts
                                                                                                 ## a
                                                                                                 ## message
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## system
                                                                                                 ## log.
#     when defined windows:
#       discard

  MessagePrinterSystemLogbaseType* = MessagePrinter

proc getTypeName*(): cstring {.importcpp: "Message_PrinterSystemLog::get_type_name(@)",
                            header: "Message_PrinterSystemLog.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Message_PrinterSystemLog::get_type_descriptor(@)",
    header: "Message_PrinterSystemLog.hxx".}
proc dynamicType*(this: MessagePrinterSystemLog): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Message_PrinterSystemLog.hxx".}
proc constructMessagePrinterSystemLog*(theEventSourceName: TCollectionAsciiString;
    theTraceLevel: MessageGravity = messageInfo): MessagePrinterSystemLog {.
    constructor, importcpp: "Message_PrinterSystemLog(@)",
    header: "Message_PrinterSystemLog.hxx".}
proc destroyMessagePrinterSystemLog*(this: var MessagePrinterSystemLog) {.
    importcpp: "#.~Message_PrinterSystemLog()",
    header: "Message_PrinterSystemLog.hxx".}

























