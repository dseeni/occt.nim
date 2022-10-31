import prsdim_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types





##  Created on: 1996-12-05
##  Created by: Jean-Pierre COMBE/Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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





proc newPrsDimPerpendicularRelation*(aFShape: TopoDS_Shape; aSShape: TopoDS_Shape;
                                    aPlane: Handle[GeomPlane]): PrsDimPerpendicularRelation {.
    cdecl, constructor, importcpp: "PrsDim_PerpendicularRelation(@)", header: "PrsDim_PerpendicularRelation.hxx".}
proc newPrsDimPerpendicularRelation*(aFShape: TopoDS_Shape; aSShape: TopoDS_Shape): PrsDimPerpendicularRelation {.
    cdecl, constructor, importcpp: "PrsDim_PerpendicularRelation(@)", header: "PrsDim_PerpendicularRelation.hxx".}


