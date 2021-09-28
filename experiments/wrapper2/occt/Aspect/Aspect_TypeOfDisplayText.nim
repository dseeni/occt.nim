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

## ! Define the display type of the text.

type
  AspectTypeOfDisplayText* {.size: sizeof(cint),
                            importcpp: "Aspect_TypeOfDisplayText",
                            header: "Aspect_TypeOfDisplayText.hxx".} = enum
    AspectTODT_NORMAL,        ## !< default display, text only
    AspectTODT_SUBTITLE,      ## !< there is a subtitle under the text
    AspectTODT_DEKALE,        ## !< the text is displayed with a 3D style
    AspectTODT_BLEND,         ## !< the text is displayed in XOR
    AspectTODT_DIMENSION,     ## !< dimension line under text will be invisible
    AspectTODT_SHADOW         ## !< the text will have a shadow at the right-bottom corner



























