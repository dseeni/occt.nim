##  Created on: 1998-06-15
##  Created by: Jean Yves LEBEY
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

proc fDSSDM_prepare*(a1: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FDSSDM_prepare(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc fDSSDM_makes1s2*(s: TopoDS_Shape; l1: var TopToolsListOfShape;
                     l2: var TopToolsListOfShape) {.
    importcpp: "FDSSDM_makes1s2(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc fDSSDM_s1s2makesordor*(l1: TopToolsListOfShape; l2: TopToolsListOfShape;
                           s: TopoDS_Shape; lso: var TopToolsListOfShape;
                           ldo: var TopToolsListOfShape) {.
    importcpp: "FDSSDM_s1s2makesordor(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc fDSSDM_s1s2*(s: TopoDS_Shape; ls1: var TopToolsListOfShape;
                 ls2: var TopToolsListOfShape) {.importcpp: "FDSSDM_s1s2(@)",
    header: "TopOpeBRepDS_samdom.hxx".}
proc fDSSDM_sordor*(s: TopoDS_Shape; lso: var TopToolsListOfShape;
                   ldo: var TopToolsListOfShape) {.importcpp: "FDSSDM_sordor(@)",
    header: "TopOpeBRepDS_samdom.hxx".}
proc fDSSDM_contains*(s: TopoDS_Shape; L: TopToolsListOfShape): StandardBoolean {.
    importcpp: "FDSSDM_contains(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc fDSSDM_copylist*(lin: TopToolsListOfShape; i1: int; i2: int;
                     lou: var TopToolsListOfShape) {.
    importcpp: "FDSSDM_copylist(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc fDSSDM_copylist*(lin: TopToolsListOfShape; lou: var TopToolsListOfShape) {.
    importcpp: "FDSSDM_copylist(@)", header: "TopOpeBRepDS_samdom.hxx".}