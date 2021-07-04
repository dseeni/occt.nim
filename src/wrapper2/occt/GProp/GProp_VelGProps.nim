##  Created on: 1992-12-02
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, GProp_GProps, ../Standard/Standard_Real

discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
type
  GProp_VelGProps* {.importcpp: "GProp_VelGProps", header: "GProp_VelGProps.hxx",
                    bycopy.} = object of GProp_GProps


proc constructGProp_VelGProps*(): GProp_VelGProps {.constructor,
    importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGProp_VelGProps*(S: gp_Cylinder; Alpha1: Standard_Real;
                              Alpha2: Standard_Real; Z1: Standard_Real;
                              Z2: Standard_Real; VLocation: gp_Pnt): GProp_VelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGProp_VelGProps*(S: gp_Cone; Alpha1: Standard_Real;
                              Alpha2: Standard_Real; Z1: Standard_Real;
                              Z2: Standard_Real; VLocation: gp_Pnt): GProp_VelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGProp_VelGProps*(S: gp_Sphere; Teta1: Standard_Real;
                              Teta2: Standard_Real; Alpha1: Standard_Real;
                              Alpha2: Standard_Real; VLocation: gp_Pnt): GProp_VelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGProp_VelGProps*(S: gp_Torus; Teta1: Standard_Real;
                              Teta2: Standard_Real; Alpha1: Standard_Real;
                              Alpha2: Standard_Real; VLocation: gp_Pnt): GProp_VelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc SetLocation*(this: var GProp_VelGProps; VLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "GProp_VelGProps.hxx".}
proc Perform*(this: var GProp_VelGProps; S: gp_Cylinder; Alpha1: Standard_Real;
             Alpha2: Standard_Real; Z1: Standard_Real; Z2: Standard_Real) {.
    importcpp: "Perform", header: "GProp_VelGProps.hxx".}
proc Perform*(this: var GProp_VelGProps; S: gp_Cone; Alpha1: Standard_Real;
             Alpha2: Standard_Real; Z1: Standard_Real; Z2: Standard_Real) {.
    importcpp: "Perform", header: "GProp_VelGProps.hxx".}
proc Perform*(this: var GProp_VelGProps; S: gp_Sphere; Teta1: Standard_Real;
             Teta2: Standard_Real; Alpha1: Standard_Real; Alpha2: Standard_Real) {.
    importcpp: "Perform", header: "GProp_VelGProps.hxx".}
proc Perform*(this: var GProp_VelGProps; S: gp_Torus; Teta1: Standard_Real;
             Teta2: Standard_Real; Alpha1: Standard_Real; Alpha2: Standard_Real) {.
    importcpp: "Perform", header: "GProp_VelGProps.hxx".}