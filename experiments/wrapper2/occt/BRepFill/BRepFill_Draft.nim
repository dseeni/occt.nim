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

discard "forward decl of BRepFill_DraftLaw"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Dir"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shell"
discard "forward decl of Bnd_Box"
type
  BRepFillDraft* {.importcpp: "BRepFill_Draft", header: "BRepFill_Draft.hxx", bycopy.} = object


proc constructBRepFillDraft*(shape: TopoDS_Shape; dir: Dir; angle: float): BRepFillDraft {.
    constructor, importcpp: "BRepFill_Draft(@)", header: "BRepFill_Draft.hxx".}
proc setOptions*(this: var BRepFillDraft;
                style: BRepFillTransitionStyle = bRepFillRight;
                angleMin: float = 0.01; angleMax: float = 3.0) {.
    importcpp: "SetOptions", header: "BRepFill_Draft.hxx".}
proc setDraft*(this: var BRepFillDraft; isInternal: bool = false) {.
    importcpp: "SetDraft", header: "BRepFill_Draft.hxx".}
proc perform*(this: var BRepFillDraft; lengthMax: float) {.importcpp: "Perform",
    header: "BRepFill_Draft.hxx".}
proc perform*(this: var BRepFillDraft; surface: Handle[GeomSurface];
             keepInsideSurface: bool = true) {.importcpp: "Perform",
    header: "BRepFill_Draft.hxx".}
proc perform*(this: var BRepFillDraft; stopShape: TopoDS_Shape;
             keepOutSide: bool = true) {.importcpp: "Perform",
                                     header: "BRepFill_Draft.hxx".}
proc isDone*(this: BRepFillDraft): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "BRepFill_Draft.hxx".}
proc shell*(this: BRepFillDraft): TopoDS_Shell {.noSideEffect, importcpp: "Shell",
    header: "BRepFill_Draft.hxx".}
proc generated*(this: var BRepFillDraft; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepFill_Draft.hxx".}
proc shape*(this: BRepFillDraft): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Draft.hxx".}
