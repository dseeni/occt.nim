##  Created on: 1995-07-24
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_Surface"
type
  StdPrsWFPoleSurface* {.importcpp: "StdPrs_WFPoleSurface",
                        header: "StdPrs_WFPoleSurface.hxx", bycopy.} = object of Prs3dRoot ##
                                                                                    ## !
                                                                                    ## Adds
                                                                                    ## the
                                                                                    ## surface
                                                                                    ## aSurface
                                                                                    ## to
                                                                                    ## the
                                                                                    ## presentation
                                                                                    ## object
                                                                                    ## aPresentation.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## shape's
                                                                                    ## display
                                                                                    ## attributes
                                                                                    ## are
                                                                                    ## set
                                                                                    ## in
                                                                                    ## the
                                                                                    ## attribute
                                                                                    ## manager
                                                                                    ## aDrawer.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## surface
                                                                                    ## aSurface
                                                                                    ## is
                                                                                    ## a
                                                                                    ## surface
                                                                                    ## object
                                                                                    ## from
                                                                                    ##
                                                                                    ## !
                                                                                    ## Adaptor3d,
                                                                                    ## and
                                                                                    ## provides
                                                                                    ## data
                                                                                    ## from
                                                                                    ## a
                                                                                    ## Geom
                                                                                    ## surface.
                                                                                    ##
                                                                                    ## !
                                                                                    ## This
                                                                                    ## makes
                                                                                    ## it
                                                                                    ## possible
                                                                                    ## to
                                                                                    ## use
                                                                                    ## the
                                                                                    ## surface
                                                                                    ## in
                                                                                    ## a
                                                                                    ## geometric
                                                                                    ## algorithm.


proc add*(aPresentation: Handle[Prs3dPresentation]; aSurface: Adaptor3dSurface;
         aDrawer: Handle[Prs3dDrawer]) {.importcpp: "StdPrs_WFPoleSurface::Add(@)",
                                       header: "StdPrs_WFPoleSurface.hxx".}
