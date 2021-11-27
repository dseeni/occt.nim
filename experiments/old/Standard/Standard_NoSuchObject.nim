##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of Standard_NoSuchObject"
type
  StandardNoSuchObject* {.importcpp: "Standard_NoSuchObject",
                         header: "Standard_NoSuchObject.hxx", bycopy.} = object of StandardDomainError
type
  HandleStandardNoSuchObject* = Handle[StandardNoSuchObject]

when not defined(noException) and not defined(noStandardNoSuchObject):
  template standardNoSuchObjectRaiseIf*(condition, message: untyped): void =
    if condition:
      proc standardNoSuchObject*(a1: Message): Throw {.
          importcpp: "Standard_NoSuchObject(@)",
          header: "Standard_NoSuchObject.hxx".}

else:
  discard

