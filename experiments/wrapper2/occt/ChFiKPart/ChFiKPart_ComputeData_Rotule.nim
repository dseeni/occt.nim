##  Created on: 1994-06-28
##  Created by: Laurent BOURESCHE
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

proc chFiKPartMakeRotule*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pl: Pln; pl1: Pln; pl2: Pln;
                         opl: TopAbsOrientation; opl1: TopAbsOrientation;
                         opl2: TopAbsOrientation; r: cfloat; ofpl: TopAbsOrientation): bool {.
    importcpp: "ChFiKPart_MakeRotule(@)",
    header: "ChFiKPart_ComputeData_Rotule.hxx".}

























