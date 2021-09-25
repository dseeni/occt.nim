##  Created on: 1997-03-27
##  Created by: Alexander BRIVIN and Dmitry TARASOV
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

## ! defines a Group node of VRML specifying group properties.
## ! This node defines the base class for all group nodes. Group is a node that
## ! contains an ordered list of child nodes. This node is simply a container for
## ! the child nodes and does not alter the traversal state in any way.
## ! During traversal, state accumulated for a child is passed on to each successive
## ! child and then to the parents of the group (Group does not push or pop traversal
## ! state as separator does).

type
  VrmlGroup* {.importcpp: "Vrml_Group", header: "Vrml_Group.hxx", bycopy.} = object


proc constructVrmlGroup*(): VrmlGroup {.constructor, importcpp: "Vrml_Group(@)",
                                     header: "Vrml_Group.hxx".}
proc print*(this: var VrmlGroup; anOStream: var StandardOStream): var StandardOStream {.
    importcpp: "Print", header: "Vrml_Group.hxx".}
