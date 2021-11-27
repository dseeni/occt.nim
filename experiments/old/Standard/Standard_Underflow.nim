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

discard "forward decl of Standard_Underflow"
discard "forward decl of Standard_Underflow"
type
  HandleC1C1* = Handle[StandardUnderflow]

when not defined(noException) and not defined(noStandardUnderflow):
  template standardUnderflowRaiseIf*(condition, message: untyped): void =
    if condition:
      proc standardUnderflow*(a1: Message): Throw {.
          importcpp: "Standard_Underflow(@)", header: "Standard_Underflow.hxx".}

else:
  discard
type
  StandardUnderflow* {.importcpp: "Standard_Underflow",
                      header: "Standard_Underflow.hxx", bycopy.} = object of StandardNumericError






