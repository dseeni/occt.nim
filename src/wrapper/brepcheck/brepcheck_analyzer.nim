import brepcheck_types
import ../tkbrep/topods/topods_types
import ../tkernel/standard/standard_types

##  Created on: 1995-12-08
##  Created by: Jacques GOUSSARD
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

discard "forward decl of BRepCheck_Result"


proc newBRepCheck_Analyzer*(S: TopoDS_Shape; GeomControls: bool = true;
                           theIsParallel: bool = false): BRepCheck_Analyzer {.cdecl,
    constructor, importcpp: "BRepCheck_Analyzer(@)",
    header: "BRepCheck_Analyzer.hxx".}
proc Init*(this: var BRepCheck_Analyzer; S: TopoDS_Shape; GeomControls: bool = true;
          theIsParallel: bool = false) {.cdecl, importcpp: "Init",
                                     header: "BRepCheck_Analyzer.hxx".}
proc IsValid*(this: BRepCheck_Analyzer; S: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "BRepCheck_Analyzer.hxx".}
proc IsValid*(this: BRepCheck_Analyzer): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "BRepCheck_Analyzer.hxx".}
proc Result*(this: BRepCheck_Analyzer; theSubS: TopoDS_Shape): Handle[
    BRepCheck_Result] {.noSideEffect, cdecl, importcpp: "Result",
                       header: "BRepCheck_Analyzer.hxx".}