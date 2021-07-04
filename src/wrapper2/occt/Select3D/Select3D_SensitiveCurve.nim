##  Created on: 1995-03-13
##  Created by: Robert COUBLANC
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

import
  ../Geom/Geom_Curve, Select3D_SensitivePoly, ../TColgp/TColgp_HArray1OfPnt,
  ../SelectMgr/SelectMgr_SelectingVolumeManager

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
type
  Select3D_SensitiveCurve* {.importcpp: "Select3D_SensitiveCurve",
                            header: "Select3D_SensitiveCurve.hxx", bycopy.} = object of Select3D_SensitivePoly ##
                                                                                                        ## !
                                                                                                        ## Constructs
                                                                                                        ## a
                                                                                                        ## sensitive
                                                                                                        ## curve
                                                                                                        ## object
                                                                                                        ## defined
                                                                                                        ## by
                                                                                                        ## the
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## owner
                                                                                                        ## theOwnerId,
                                                                                                        ## the
                                                                                                        ## curve
                                                                                                        ## theCurve,
                                                                                                        ## and
                                                                                                        ## the
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## maximum
                                                                                                        ## number
                                                                                                        ## of
                                                                                                        ## points
                                                                                                        ## on
                                                                                                        ## the
                                                                                                        ## curve:
                                                                                                        ## theNbPnts.

  Select3D_SensitiveCurvebase_type* = Select3D_SensitivePoly

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveCurve::get_type_name(@)",
                              header: "Select3D_SensitiveCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveCurve::get_type_descriptor(@)",
    header: "Select3D_SensitiveCurve.hxx".}
proc DynamicType*(this: Select3D_SensitiveCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveCurve.hxx".}
proc constructSelect3D_SensitiveCurve*(theOwnerId: handle[SelectMgr_EntityOwner];
                                      theCurve: handle[Geom_Curve];
                                      theNbPnts: Standard_Integer = 17): Select3D_SensitiveCurve {.
    constructor, importcpp: "Select3D_SensitiveCurve(@)",
    header: "Select3D_SensitiveCurve.hxx".}
proc constructSelect3D_SensitiveCurve*(theOwnerId: handle[SelectMgr_EntityOwner];
                                      thePoints: handle[TColgp_HArray1OfPnt]): Select3D_SensitiveCurve {.
    constructor, importcpp: "Select3D_SensitiveCurve(@)",
    header: "Select3D_SensitiveCurve.hxx".}
proc constructSelect3D_SensitiveCurve*(theOwnerId: handle[SelectMgr_EntityOwner];
                                      thePoints: TColgp_Array1OfPnt): Select3D_SensitiveCurve {.
    constructor, importcpp: "Select3D_SensitiveCurve(@)",
    header: "Select3D_SensitiveCurve.hxx".}
proc GetConnected*(this: var Select3D_SensitiveCurve): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveCurve.hxx".}
discard "forward decl of Select3D_SensitiveCurve"
type
  Handle_Select3D_SensitiveCurve* = handle[Select3D_SensitiveCurve]
