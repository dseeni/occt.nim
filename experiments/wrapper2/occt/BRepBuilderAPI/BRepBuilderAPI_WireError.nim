##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
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

## ! Indicates the outcome of wire
## ! construction, i.e. whether it is successful or not, as explained below:
## ! -      BRepBuilderAPI_WireDone No
## ! error occurred. The wire is correctly built.
## ! -      BRepBuilderAPI_EmptyWire No
## ! initialization of the algorithm. Only an empty constructor was used.
## ! -      BRepBuilderAPI_DisconnectedWire
## ! The last edge which you attempted to add was not connected to the wire.
## ! -      BRepBuilderAPI_NonManifoldWire
## ! The wire with some singularity.

type
  BRepBuilderAPI_WireError* {.size: sizeof(cint),
                             importcpp: "BRepBuilderAPI_WireError",
                             header: "BRepBuilderAPI_WireError.hxx".} = enum
    BRepBuilderAPI_WireDone, BRepBuilderAPI_EmptyWire,
    BRepBuilderAPI_DisconnectedWire, BRepBuilderAPI_NonManifoldWire


