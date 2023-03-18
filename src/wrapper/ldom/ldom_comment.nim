import ldom_types



##  Created on: 2001-09-12
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

##   Class LDOM_Comment



proc newLDOM_Comment*(): LDOM_Comment {.cdecl, constructor,
                                     importcpp: "LDOM_Comment(@)",
                                     header: "LDOM_Comment.hxx".}
proc newLDOM_Comment*(theOther: LDOM_Comment): LDOM_Comment {.cdecl, constructor,
    importcpp: "LDOM_Comment(@)", header: "LDOM_Comment.hxx".}

