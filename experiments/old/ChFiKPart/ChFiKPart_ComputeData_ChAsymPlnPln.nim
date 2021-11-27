##  Created on: 1998-06-16
##  Created by: Philippe NOUAILLE
##  Copyright (c) 1998-1999 Matra Datavision
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

proc chFiKPartMakeChAsym*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pl1: Pln; pl2: Pln;
                         or1: TopAbsOrientation; or2: TopAbsOrientation;
                         dis: StandardReal; angle: StandardReal; spine: Lin;
                         first: StandardReal; of1: TopAbsOrientation;
                         disOnP1: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeChAsym(@)",
    header: "ChFiKPart_ComputeData_ChAsymPlnPln.hxx".}