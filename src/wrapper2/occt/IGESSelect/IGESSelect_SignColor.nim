##  Created on: 2001-03-06
##  Created by: Christian CAILLET
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IFSelect/IFSelect_Signature, ../Standard/Standard_CString

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IGESSelect_SignColor"
discard "forward decl of IGESSelect_SignColor"
type
  Handle_IGESSelect_SignColor* = handle[IGESSelect_SignColor]

## ! Gives Color attached to an entity
## ! Several forms are possible, according to <mode>
## ! 1 : number : "Dnn" for entity, "Snn" for standard, "(none)" for 0
## ! 2 : name : Of standard color, or of the color entity, or "(none)"
## ! (if the color entity has no name, its label is taken)
## ! 3 : RGB values, form R:nn,G:nn,B:nn
## ! 4 : RED value   : an integer
## ! 5 : GREEN value : an integer
## ! 6 : BLUE value  : an integer
## ! Other computable values can be added if needed :
## ! CMY values, Percentages for Hue, Lightness, Saturation

type
  IGESSelect_SignColor* {.importcpp: "IGESSelect_SignColor",
                         header: "IGESSelect_SignColor.hxx", bycopy.} = object of IFSelect_Signature ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## SignColor
                                                                                              ##
                                                                                              ## !
                                                                                              ## mode
                                                                                              ## :
                                                                                              ## see
                                                                                              ## above
                                                                                              ## for
                                                                                              ## the
                                                                                              ## meaning
                                                                                              ##
                                                                                              ## !
                                                                                              ## modes
                                                                                              ## 4,5,6
                                                                                              ## give
                                                                                              ## a
                                                                                              ## numeric
                                                                                              ## integer
                                                                                              ## value
                                                                                              ##
                                                                                              ## !
                                                                                              ## Name
                                                                                              ## is
                                                                                              ## initialised
                                                                                              ## according
                                                                                              ## to
                                                                                              ## the
                                                                                              ## mode


proc constructIGESSelect_SignColor*(mode: Standard_Integer): IGESSelect_SignColor {.
    constructor, importcpp: "IGESSelect_SignColor(@)",
    header: "IGESSelect_SignColor.hxx".}
proc Value*(this: IGESSelect_SignColor; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IGESSelect_SignColor.hxx".}
type
  IGESSelect_SignColorbase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SignColor::get_type_name(@)",
                              header: "IGESSelect_SignColor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SignColor::get_type_descriptor(@)",
    header: "IGESSelect_SignColor.hxx".}
proc DynamicType*(this: IGESSelect_SignColor): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_SignColor.hxx".}