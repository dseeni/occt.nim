##  Created on: 1993-03-24
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Geom2d_UndefinedValue"
discard "forward decl of Geom2d_UndefinedValue"
type
  HandleC1C1* = Handle[Geom2dUndefinedValue]

when not defined(noException) and not defined(noGeom2dUndefinedValue):
  template geom2dUndefinedValueRaiseIf*(condition, message: untyped): void =
    if condition:
      proc geom2dUndefinedValue*(a1: Message): Throw {.
          importcpp: "Geom2d_UndefinedValue(@)",
          header: "Geom2d_UndefinedValue.hxx".}

else:
  discard
type
  Geom2dUndefinedValue* {.importcpp: "Geom2d_UndefinedValue",
                         header: "Geom2d_UndefinedValue.hxx", bycopy.} = object of StandardDomainError

