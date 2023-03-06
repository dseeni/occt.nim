import convert_types
import ../gp/gp_types
#import ../tcolstd/tcolstd_types
##  Created on: 1991-10-10
##  Created by: Jean Claude VAUTHIER
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Cone"


proc newConvertConeToBSplineSurface*(c: gp_Cone; u1: cfloat; u2: cfloat; v1: cfloat;
                                    v2: cfloat): ConvertConeToBSplineSurface {.
    cdecl, constructor, importcpp: "Convert_ConeToBSplineSurface(@)", header: "Convert_ConeToBSplineSurface.hxx".}
proc newConvertConeToBSplineSurface*(c: gp_Cone; v1: cfloat; v2: cfloat): ConvertConeToBSplineSurface {.
    cdecl, constructor, importcpp: "Convert_ConeToBSplineSurface(@)", header: "Convert_ConeToBSplineSurface.hxx".}
