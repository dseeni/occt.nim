##  Created on: 1997-05-13
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

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of VrmlConverter_Drawer"
type
  VrmlConverterWFRestrictedFace* {.importcpp: "VrmlConverter_WFRestrictedFace",
                                  header: "VrmlConverter_WFRestrictedFace.hxx",
                                  bycopy.} = object


proc add*(anOStream: var StandardOStream; aFace: Handle[BRepAdaptorHSurface];
         aDrawer: Handle[VrmlConverterDrawer]) {.
    importcpp: "VrmlConverter_WFRestrictedFace::Add(@)",
    header: "VrmlConverter_WFRestrictedFace.hxx".}
proc addUIso*(anOStream: var StandardOStream; aFace: Handle[BRepAdaptorHSurface];
             aDrawer: Handle[VrmlConverterDrawer]) {.
    importcpp: "VrmlConverter_WFRestrictedFace::AddUIso(@)",
    header: "VrmlConverter_WFRestrictedFace.hxx".}
proc addVIso*(anOStream: var StandardOStream; aFace: Handle[BRepAdaptorHSurface];
             aDrawer: Handle[VrmlConverterDrawer]) {.
    importcpp: "VrmlConverter_WFRestrictedFace::AddVIso(@)",
    header: "VrmlConverter_WFRestrictedFace.hxx".}
proc add*(anOStream: var StandardOStream; aFace: Handle[BRepAdaptorHSurface];
         drawUIso: bool; drawVIso: bool; nBUiso: cint; nBViso: cint;
         aDrawer: Handle[VrmlConverterDrawer]) {.
    importcpp: "VrmlConverter_WFRestrictedFace::Add(@)",
    header: "VrmlConverter_WFRestrictedFace.hxx".}

























