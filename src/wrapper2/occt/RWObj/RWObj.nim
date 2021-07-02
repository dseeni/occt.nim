##  Author: Kirill Gavrilov
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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

## ! This class provides methods to read and write triangulation from / to the OBJ files.

type
  RWObj* {.importcpp: "RWObj", header: "RWObj.hxx", bycopy.} = object ## ! Read specified OBJ file and returns its content as triangulation.
                                                              ## ! In case of error, returns Null handle.


proc readFile*(theFile: StandardCString;
              aProgress: MessageProgressRange = messageProgressRange()): Handle[
    PolyTriangulation] {.importcpp: "RWObj::ReadFile(@)", header: "RWObj.hxx".}

