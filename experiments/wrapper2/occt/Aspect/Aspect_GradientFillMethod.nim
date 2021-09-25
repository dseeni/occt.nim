##  Created by: NW,JPB,CAL
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

## ! Defines the fill methods to
## ! write gradient background in a window.

type
  AspectGradientFillMethod* {.size: sizeof(cint),
                             importcpp: "Aspect_GradientFillMethod",
                             header: "Aspect_GradientFillMethod.hxx".} = enum
    AspectGFM_NONE, AspectGFM_HOR, AspectGFM_VER, AspectGFM_DIAG1, AspectGFM_DIAG2,
    AspectGFM_CORNER1, AspectGFM_CORNER2, AspectGFM_CORNER3, AspectGFM_CORNER4


