##  Created on: 1997-02-12
##  Created by: Alexander BRIVIN
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

## ! defines a Switch node of VRML specifying group properties.
## ! This  group  node  traverses  one,  none,  or  all  of  its  children.
## ! One  can  use  this  node  to  switch  on  and  off  the  effects  of  some
## ! properties  or  to  switch  between  different  properties.
## ! The  whichChild  field  specifies  the  index  of  the  child  to  traverse,
## ! where  the  first  child  has  index  0.
## ! A  value  of  -1  (the  default)  means  do  not  traverse  any  children.
## ! A  value  of  -3  traverses  all  children,  making  the  switch  behave  exactly
## ! like  a  regular  Group.

type
  VrmlSwitch* {.importcpp: "Vrml_Switch", header: "Vrml_Switch.hxx", bycopy.} = object


proc constructVrmlSwitch*(aWhichChild: int = -1): VrmlSwitch {.constructor,
    importcpp: "Vrml_Switch(@)", header: "Vrml_Switch.hxx".}
proc setWhichChild*(this: var VrmlSwitch; aWhichChild: int) {.
    importcpp: "SetWhichChild", header: "Vrml_Switch.hxx".}
proc whichChild*(this: VrmlSwitch): int {.noSideEffect, importcpp: "WhichChild",
                                      header: "Vrml_Switch.hxx".}
proc print*(this: VrmlSwitch; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Switch.hxx".}
