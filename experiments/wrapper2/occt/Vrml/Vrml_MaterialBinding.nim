##  Created on: 1997-02-11
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

## ! defines a MaterialBinding node of VRML specifying properties of geometry
## ! and its appearance.
## ! Material nodes may contain more than one material. This node specifies how the current
## ! materials are bound to shapes that follow in the scene graph. Each shape node may
## ! interpret bindings differently. For example, a Sphere node is always drawn using the first
## ! material in the material node, no matter what the current MaterialBinding, while a Cube
## ! node may use six different materials to draw each of its six faces, depending on the
## ! MaterialBinding.

type
  VrmlMaterialBinding* {.importcpp: "Vrml_MaterialBinding",
                        header: "Vrml_MaterialBinding.hxx", bycopy.} = object


proc constructVrmlMaterialBinding*(aValue: VrmlMaterialBindingAndNormalBinding): VrmlMaterialBinding {.
    constructor, importcpp: "Vrml_MaterialBinding(@)",
    header: "Vrml_MaterialBinding.hxx".}
proc constructVrmlMaterialBinding*(): VrmlMaterialBinding {.constructor,
    importcpp: "Vrml_MaterialBinding(@)", header: "Vrml_MaterialBinding.hxx".}
proc setValue*(this: var VrmlMaterialBinding;
              aValue: VrmlMaterialBindingAndNormalBinding) {.
    importcpp: "SetValue", header: "Vrml_MaterialBinding.hxx".}
proc value*(this: VrmlMaterialBinding): VrmlMaterialBindingAndNormalBinding {.
    noSideEffect, importcpp: "Value", header: "Vrml_MaterialBinding.hxx".}
proc print*(this: VrmlMaterialBinding; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_MaterialBinding.hxx".}
