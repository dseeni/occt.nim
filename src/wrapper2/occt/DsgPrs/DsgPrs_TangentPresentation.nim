##  Created on: 1996-01-16
##  Created by: Jean-Pierre COMBE
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  DsgPrsTangentPresentation* {.importcpp: "DsgPrs_TangentPresentation",
                              header: "DsgPrs_TangentPresentation.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Adds
                                                                                     ## the
                                                                                     ## point
                                                                                     ## OffsetPoint,
                                                                                     ## the
                                                                                     ## direction
                                                                                     ## aDirection
                                                                                     ##
                                                                                     ## !
                                                                                     ## and
                                                                                     ## the
                                                                                     ## length
                                                                                     ## aLength
                                                                                     ## to
                                                                                     ## the
                                                                                     ## presentation
                                                                                     ## object
                                                                                     ## aPresentation.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## display
                                                                                     ## attributes
                                                                                     ## of
                                                                                     ## the
                                                                                     ## tangent
                                                                                     ## are
                                                                                     ## defined
                                                                                     ## by
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## attribute
                                                                                     ## manager
                                                                                     ## aDrawer.


proc add*(aPresentation: Handle[Prs3dPresentation]; aDrawer: Handle[Prs3dDrawer];
         offsetPoint: GpPnt; aDirection: GpDir; aLength: StandardReal) {.
    importcpp: "DsgPrs_TangentPresentation::Add(@)",
    header: "DsgPrs_TangentPresentation.hxx".}

