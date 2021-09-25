##  Created on: 1993-10-18
##  Created by: Christophe MARION
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

discard "forward decl of gp_Dir"
type
  HLRBRepEdgeFaceTool* {.importcpp: "HLRBRep_EdgeFaceTool",
                        header: "HLRBRep_EdgeFaceTool.hxx", bycopy.} = object


proc curvatureValue*(f: StandardAddress; u: float; v: float; tg: Dir): float {.
    importcpp: "HLRBRep_EdgeFaceTool::CurvatureValue(@)",
    header: "HLRBRep_EdgeFaceTool.hxx".}
proc uVPoint*(par: float; e: StandardAddress; f: StandardAddress; u: var float;
             v: var float): bool {.importcpp: "HLRBRep_EdgeFaceTool::UVPoint(@)",
                               header: "HLRBRep_EdgeFaceTool.hxx".}
