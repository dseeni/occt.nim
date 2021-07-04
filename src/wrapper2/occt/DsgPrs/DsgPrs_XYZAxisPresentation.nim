##  Created on: 1997-02-10
##  Created by: Odile Olivier
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
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Prs3d/Prs3d_Presentation

discard "forward decl of Prs3d_LineAspect"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of Prs3d_ArrowAspect"
discard "forward decl of Prs3d_TextAspect"
type
  DsgPrs_XYZAxisPresentation* {.importcpp: "DsgPrs_XYZAxisPresentation",
                               header: "DsgPrs_XYZAxisPresentation.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Draws
                                                                                      ## each
                                                                                      ## axis
                                                                                      ## of
                                                                                      ## a
                                                                                      ## trihedron
                                                                                      ## displayed
                                                                                      ## in
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## presentation
                                                                                      ## aPresentation
                                                                                      ## and
                                                                                      ## with
                                                                                      ## lines
                                                                                      ## shown
                                                                                      ## by
                                                                                      ##
                                                                                      ## !
                                                                                      ## the
                                                                                      ## values
                                                                                      ## of
                                                                                      ## aLineAspect.
                                                                                      ## Each
                                                                                      ## axis
                                                                                      ## is
                                                                                      ## defined
                                                                                      ## by:
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## the
                                                                                      ## first
                                                                                      ## and
                                                                                      ## last
                                                                                      ## points
                                                                                      ## aPfirst
                                                                                      ## and
                                                                                      ## aPlast
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## the
                                                                                      ## direction
                                                                                      ## aDir
                                                                                      ## and
                                                                                      ##
                                                                                      ## !
                                                                                      ## -
                                                                                      ## the
                                                                                      ## value
                                                                                      ## aVal
                                                                                      ## which
                                                                                      ## provides
                                                                                      ## a
                                                                                      ## value
                                                                                      ## for
                                                                                      ## length.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## value
                                                                                      ## for
                                                                                      ## length
                                                                                      ## is
                                                                                      ## provided
                                                                                      ## so
                                                                                      ## that
                                                                                      ## the
                                                                                      ## trihedron
                                                                                      ##
                                                                                      ## !
                                                                                      ## can
                                                                                      ## vary
                                                                                      ## in
                                                                                      ## length
                                                                                      ## relative
                                                                                      ## to
                                                                                      ## the
                                                                                      ## scale
                                                                                      ## of
                                                                                      ## shape
                                                                                      ## display.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Each
                                                                                      ## axis
                                                                                      ## will
                                                                                      ## be
                                                                                      ## identified
                                                                                      ## as
                                                                                      ## X,
                                                                                      ## Y,
                                                                                      ## or
                                                                                      ## Z
                                                                                      ## by
                                                                                      ## the
                                                                                      ## text
                                                                                      ## aText.


proc Add*(aPresentation: handle[Prs3d_Presentation];
         anLineAspect: handle[Prs3d_LineAspect]; aDir: gp_Dir; aVal: Standard_Real;
         aText: Standard_CString; aPfirst: gp_Pnt; aPlast: gp_Pnt) {.
    importcpp: "DsgPrs_XYZAxisPresentation::Add(@)",
    header: "DsgPrs_XYZAxisPresentation.hxx".}
proc Add*(aPresentation: handle[Prs3d_Presentation];
         aLineAspect: handle[Prs3d_LineAspect];
         anArrowAspect: handle[Prs3d_ArrowAspect];
         aTextAspect: handle[Prs3d_TextAspect]; aDir: gp_Dir; aVal: Standard_Real;
         aText: Standard_CString; aPfirst: gp_Pnt; aPlast: gp_Pnt) {.
    importcpp: "DsgPrs_XYZAxisPresentation::Add(@)",
    header: "DsgPrs_XYZAxisPresentation.hxx".}