##  Created by: GG
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2013 OPEN CASCADE SAS
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

discard "forward decl of V3d_Plane"
discard "forward decl of V3d_Plane"
type
  HandleV3dPlane* = Handle[V3dPlane]

## ! Obsolete clip plane presentation class.
## ! Ported on new core of Graphic3d_ClipPlane approach.
## ! Please access Graphic3d_ClipPlane via ClipPlane() method
## ! to use it for standard clipping workflow.
## ! Example of use:
## ! @code
## !
## ! Handle(V3d_Plane) aPlane (0, 1, 0, -20);
## ! Handle(V3d_View) aView;
## ! aView->AddClipPlane (aPlane->ClipPlane());
## !
## ! aPlane->Display (aView);
## ! aPlane->SetPlane (0, 1, 0, -30);
## ! aView->RemoveClipPlane (aPlane->ClipPlane());
## !
## ! @endcode
## ! Use interface of this class to modify plane equation synchronously
## ! with clipping equation.

type
  V3dPlane* {.importcpp: "V3d_Plane", header: "V3d_Plane.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## clipping
                                                                                            ## plane
                                                                                            ## from
                                                                                            ## plane
                                                                                            ## coefficients.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Updates
                                                                                            ## the
                                                                                            ## the
                                                                                            ## plane
                                                                                            ## representation.
    ## !< clip plane implementation.


proc constructV3dPlane*(theA: float = 0.0; theB: float = 0.0; theC: float = 1.0;
                       theD: float = 0.0): V3dPlane {.constructor,
    importcpp: "V3d_Plane(@)", header: "V3d_Plane.hxx".}
proc setPlane*(this: var V3dPlane; theA: float; theB: float; theC: float; theD: float) {.
    importcpp: "SetPlane", header: "V3d_Plane.hxx".}
proc display*(this: var V3dPlane; theView: Handle[V3dView];
             theColor: QuantityColor = quantityNOC_GRAY) {.importcpp: "Display",
    header: "V3d_Plane.hxx".}
proc erase*(this: var V3dPlane) {.importcpp: "Erase", header: "V3d_Plane.hxx".}
proc plane*(this: V3dPlane; theA: var float; theB: var float; theC: var float;
           theD: var float) {.noSideEffect, importcpp: "Plane",
                           header: "V3d_Plane.hxx".}
proc isDisplayed*(this: V3dPlane): bool {.noSideEffect, importcpp: "IsDisplayed",
                                      header: "V3d_Plane.hxx".}
proc clipPlane*(this: V3dPlane): Handle[Graphic3dClipPlane] {.noSideEffect,
    importcpp: "ClipPlane", header: "V3d_Plane.hxx".}
type
  V3dPlanebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "V3d_Plane::get_type_name(@)",
                            header: "V3d_Plane.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "V3d_Plane::get_type_descriptor(@)", header: "V3d_Plane.hxx".}
proc dynamicType*(this: V3dPlane): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_Plane.hxx".}
