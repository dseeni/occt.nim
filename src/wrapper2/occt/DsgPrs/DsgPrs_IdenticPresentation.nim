##  Created on: 1997-01-03
##  Created by: Stagiaire Flore Lautheanne
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of TCollection_ExtendedString"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Elips"
type
  DsgPrs_IdenticPresentation* {.importcpp: "DsgPrs_IdenticPresentation",
                               header: "DsgPrs_IdenticPresentation.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## draws
                                                                                      ## a
                                                                                      ## line
                                                                                      ## between
                                                                                      ## <aPntAttach>
                                                                                      ## and
                                                                                      ##
                                                                                      ## !
                                                                                      ## <aPntOffset>.


proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; aPntAttach: gp_Pnt; aPntOffset: gp_Pnt) {.
    importcpp: "DsgPrs_IdenticPresentation::Add(@)",
    header: "DsgPrs_IdenticPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; aFAttach: gp_Pnt; aSAttach: gp_Pnt;
         aPntOffset: gp_Pnt) {.importcpp: "DsgPrs_IdenticPresentation::Add(@)",
                             header: "DsgPrs_IdenticPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; aAx2: gp_Ax2; aCenter: gp_Pnt;
         aFAttach: gp_Pnt; aSAttach: gp_Pnt; aPntOffset: gp_Pnt) {.
    importcpp: "DsgPrs_IdenticPresentation::Add(@)",
    header: "DsgPrs_IdenticPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; aAx2: gp_Ax2; aCenter: gp_Pnt;
         aFAttach: gp_Pnt; aSAttach: gp_Pnt; aPntOffset: gp_Pnt; aPntOnCirc: gp_Pnt) {.
    importcpp: "DsgPrs_IdenticPresentation::Add(@)",
    header: "DsgPrs_IdenticPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation]; aDrawer: handle[Prs3d_Drawer];
         aText: TCollection_ExtendedString; anEllipse: gp_Elips; aFAttach: gp_Pnt;
         aSAttach: gp_Pnt; aPntOffset: gp_Pnt; aPntOnElli: gp_Pnt) {.
    importcpp: "DsgPrs_IdenticPresentation::Add(@)",
    header: "DsgPrs_IdenticPresentation.hxx".}