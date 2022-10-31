import brep_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types





##  Created on: 1993-08-10
##  Created by: Remi LEQUETTE
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





proc surface*(this: BRepPointsOnSurface): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRep_PointsOnSurface.hxx".}
proc surface*(this: var BRepPointsOnSurface; s: Handle[GeomSurface]) {.cdecl,
    importcpp: "Surface", header: "BRep_PointsOnSurface.hxx".}
proc dumpJson*(this: BRepPointsOnSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_PointsOnSurface.hxx".}


