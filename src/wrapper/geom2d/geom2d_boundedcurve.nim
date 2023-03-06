import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types





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





proc endPoint*(this: Geom2dBoundedCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "EndPoint", header: "Geom2d_BoundedCurve.hxx".}
proc startPoint*(this: Geom2dBoundedCurve): Pnt2dObj {.noSideEffect, cdecl,
    importcpp: "StartPoint", header: "Geom2d_BoundedCurve.hxx".}
proc dumpJson*(this: Geom2dBoundedCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_BoundedCurve.hxx".}

