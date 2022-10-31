import geomfill_types





##  Created on: 1994-02-18
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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





proc newGeomFillLine*(): GeomFillLine {.cdecl, constructor,
                                     importcpp: "GeomFill_Line(@)",
                                     header: "GeomFill_Line.hxx".}
proc newGeomFillLine*(nbPoints: cint): GeomFillLine {.cdecl, constructor,
    importcpp: "GeomFill_Line(@)", header: "GeomFill_Line.hxx".}
proc nbPoints*(this: GeomFillLine): cint {.noSideEffect, cdecl, importcpp: "NbPoints",
                                       header: "GeomFill_Line.hxx".}
proc point*(this: GeomFillLine; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Point", header: "GeomFill_Line.hxx".}


