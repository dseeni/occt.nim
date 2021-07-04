##  Created on: 1996-03-18
##  Created by: Flore Lantheaume
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_Presentation

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  DsgPrs_ConcentricPresentation* {.importcpp: "DsgPrs_ConcentricPresentation",
                                  header: "DsgPrs_ConcentricPresentation.hxx",
                                  bycopy.} = object ## ! Defines the display of elements showing relations of
                                                 ## ! concentricity between shapes.
                                                 ## ! These include the center aCenter, the radius
                                                 ## ! aRadius, the direction aNorm and the point aPoint.
                                                 ## ! These arguments are added to the presentation
                                                 ## ! object aPresentation. Their display attributes are
                                                 ## ! defined by the attribute manager aDrawer.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aCenter: gp_Pnt; aRadius: Standard_Real; aNorm: gp_Dir; aPoint: gp_Pnt) {.
    importcpp: "DsgPrs_ConcentricPresentation::Add(@)",
    header: "DsgPrs_ConcentricPresentation.hxx".}