##  Created on: 1997-03-05
##  Created by: Robert COUBLANC
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of SelectMgr_Filter"
discard "forward decl of SelectMgr_Filter"
type
  Handle_SelectMgr_Filter* = handle[SelectMgr_Filter]

## ! The root class to define filter objects for selection.
## ! Advance handling of objects requires the services of
## ! filters. These only allow dynamic detection and
## ! selection of objects which correspond to the criteria defined in each.
## ! Eight standard filters inheriting SelectMgr_Filter are
## ! defined in Open CASCADE.
## ! You can create your own filters by defining new filter
## ! classes inheriting this framework. You use these
## ! filters by loading them into an AIS interactive context.

type
  SelectMgr_Filter* {.importcpp: "SelectMgr_Filter",
                     header: "SelectMgr_Filter.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Indicates
                                                                                      ## that
                                                                                      ## the
                                                                                      ## selected
                                                                                      ## Interactive
                                                                                      ## Object
                                                                                      ##
                                                                                      ## !
                                                                                      ## passes
                                                                                      ## the
                                                                                      ## filter.
                                                                                      ## The
                                                                                      ## owner,
                                                                                      ## anObj,
                                                                                      ## can
                                                                                      ## be
                                                                                      ## either
                                                                                      ##
                                                                                      ## !
                                                                                      ## direct
                                                                                      ## or
                                                                                      ## user.
                                                                                      ## A
                                                                                      ## direct
                                                                                      ## owner
                                                                                      ## is
                                                                                      ## the
                                                                                      ## corresponding
                                                                                      ##
                                                                                      ## !
                                                                                      ## construction
                                                                                      ## element,
                                                                                      ## whereas
                                                                                      ## a
                                                                                      ## user
                                                                                      ## is
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## compound
                                                                                      ## shape
                                                                                      ## of
                                                                                      ## which
                                                                                      ## the
                                                                                      ## entity
                                                                                      ## forms
                                                                                      ## a
                                                                                      ## part.
                                                                                      ##
                                                                                      ## !
                                                                                      ## When
                                                                                      ## an
                                                                                      ## object
                                                                                      ## is
                                                                                      ## detected
                                                                                      ## by
                                                                                      ## the
                                                                                      ## mouse
                                                                                      ## -
                                                                                      ## in
                                                                                      ## AIS,
                                                                                      ##
                                                                                      ## !
                                                                                      ## this
                                                                                      ## is
                                                                                      ## done
                                                                                      ## through
                                                                                      ## a
                                                                                      ## context
                                                                                      ## selector
                                                                                      ## -
                                                                                      ## its
                                                                                      ## owner
                                                                                      ##
                                                                                      ## !
                                                                                      ## is
                                                                                      ## passed
                                                                                      ## to
                                                                                      ## the
                                                                                      ## filter
                                                                                      ## as
                                                                                      ## an
                                                                                      ## argument.
                                                                                      ##
                                                                                      ## !
                                                                                      ## If
                                                                                      ## the
                                                                                      ## object
                                                                                      ## returns
                                                                                      ## Standard_True,
                                                                                      ## it
                                                                                      ## is
                                                                                      ## kept;
                                                                                      ## if
                                                                                      ##
                                                                                      ## !
                                                                                      ## not,
                                                                                      ## it
                                                                                      ## is
                                                                                      ## rejected.
                                                                                      ##
                                                                                      ## !
                                                                                      ## If
                                                                                      ## you
                                                                                      ## are
                                                                                      ## creating
                                                                                      ## a
                                                                                      ## filter
                                                                                      ## class
                                                                                      ## inheriting
                                                                                      ## this
                                                                                      ##
                                                                                      ## !
                                                                                      ## framework,
                                                                                      ## and
                                                                                      ## the
                                                                                      ## daughter
                                                                                      ## class
                                                                                      ## is
                                                                                      ## to
                                                                                      ## be
                                                                                      ## used
                                                                                      ## in
                                                                                      ##
                                                                                      ## !
                                                                                      ## an
                                                                                      ## AIS
                                                                                      ## local
                                                                                      ## context,
                                                                                      ## you
                                                                                      ## will
                                                                                      ## need
                                                                                      ## to
                                                                                      ## implement
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## virtual
                                                                                      ## function
                                                                                      ## ActsOn.


proc IsOk*(this: SelectMgr_Filter; anObj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "SelectMgr_Filter.hxx".}
proc ActsOn*(this: SelectMgr_Filter; aStandardMode: TopAbs_ShapeEnum): Standard_Boolean {.
    noSideEffect, importcpp: "ActsOn", header: "SelectMgr_Filter.hxx".}
type
  SelectMgr_Filterbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_Filter::get_type_name(@)",
                              header: "SelectMgr_Filter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_Filter::get_type_descriptor(@)",
    header: "SelectMgr_Filter.hxx".}
proc DynamicType*(this: SelectMgr_Filter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "SelectMgr_Filter.hxx".}