##  Created on: 1998-01-17
##  Created by: Julia GERASIMOVA
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_Presentation

discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Plane"
type
  DsgPrs_EqualRadiusPresentation* {.importcpp: "DsgPrs_EqualRadiusPresentation", header: "DsgPrs_EqualRadiusPresentation.hxx",
                                   bycopy.} = object ## ! Adds the points FirstCenter, SecondCenter,
                                                  ## ! FirstPoint, SecondPoint, and the plane Plane to the
                                                  ## ! presentation object aPresentation.
                                                  ## ! The display attributes of these elements is defined by
                                                  ## ! the attribute manager aDrawer.
                                                  ## ! FirstCenter and SecondCenter are the centers of the
                                                  ## ! first and second shapes respectively, and FirstPoint
                                                  ## ! and SecondPoint are the attachment points of the radii to arcs.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         FirstCenter: gp_Pnt; SecondCenter: gp_Pnt; FirstPoint: gp_Pnt;
         SecondPoint: gp_Pnt; Plane: handle[Geom_Plane]) {.
    importcpp: "DsgPrs_EqualRadiusPresentation::Add(@)",
    header: "DsgPrs_EqualRadiusPresentation.hxx".}