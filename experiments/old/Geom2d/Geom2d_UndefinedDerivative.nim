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

discard "forward decl of Geom2d_UndefinedDerivative"
discard "forward decl of Geom2d_UndefinedDerivative"

type
  Geom2dUndefinedDerivative* {.importcpp: "Geom2d_UndefinedDerivative",
                              header: "Geom2d_UndefinedDerivative.hxx", bycopy.} = object of StandardDomainError


type
  HandleGeom2dUndefinedDerivative* = Handle[Geom2dUndefinedDerivative]

when not defined(noException) and not defined(noGeom2dUndefinedDerivative):
  template geom2dUndefinedDerivativeRaiseIf*(condition, message: untyped): void =
    if condition:
      proc geom2dUndefinedDerivative*(a1: Message): Throw {.
          importcpp: "Geom2d_UndefinedDerivative(@)",
          header: "Geom2d_UndefinedDerivative.hxx".}

else:
  discard
