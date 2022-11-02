import interface_types
import ../../tkernel/standard/standard_types







##  Created on: 1993-04-22
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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





proc newInterfaceHGraph*(agraph: InterfaceGraph): InterfaceHGraph {.cdecl,
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc newInterfaceHGraph*(amodel: Handle[InterfaceInterfaceModel];
                        lib: InterfaceGeneralLib; theModeStats: bool = true): InterfaceHGraph {.
    cdecl, constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc newInterfaceHGraph*(amodel: Handle[InterfaceInterfaceModel];
                        protocol: Handle[InterfaceProtocol];
                        theModeStats: bool = true): InterfaceHGraph {.cdecl,
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc newInterfaceHGraph*(amodel: Handle[InterfaceInterfaceModel];
                        gtool: Handle[InterfaceGTool]; theModeStats: bool = true): InterfaceHGraph {.
    cdecl, constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc newInterfaceHGraph*(amodel: Handle[InterfaceInterfaceModel];
                        theModeStats: bool = true): InterfaceHGraph {.cdecl,
    constructor, importcpp: "Interface_HGraph(@)", header: "Interface_HGraph.hxx".}
proc graph*(this: InterfaceHGraph): InterfaceGraph {.noSideEffect, cdecl,
    importcpp: "Graph", header: "Interface_HGraph.hxx".}
proc cGraph*(this: var InterfaceHGraph): var InterfaceGraph {.cdecl,
    importcpp: "CGraph", header: "Interface_HGraph.hxx".}


