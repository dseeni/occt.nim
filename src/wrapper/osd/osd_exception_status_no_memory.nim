


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


when not defined(noException) and not defined(noOSD_ExceptionSTATUS_NO_MEMORY):
  template oSD_ExceptionSTATUS_NO_MEMORY_RaiseIf*(condition, message: untyped): void =
    if condition:
      proc oSD_ExceptionSTATUS_NO_MEMORY*(a1: Message): Throw {.cdecl,
          importcpp: "OSD_Exception_STATUS_NO_MEMORY(@)",
          header: "OSD_Exception_STATUS_NO_MEMORY.hxx".}

else:
  discard

