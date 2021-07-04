##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESDraw/IGESDraw_HArray1OfConnectPoint,
  ../Interface/Interface_HArray1OfHAsciiString,
  ../IGESGraph/IGESGraph_HArray1OfTextDisplayTemplate,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ConnectPoint"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of IGESAppli_Flow"
discard "forward decl of IGESAppli_Flow"
type
  Handle_IGESAppli_Flow* = handle[IGESAppli_Flow]

## ! defines Flow, Type <402> Form <18>
## ! in package IGESAppli
## ! Represents a single signal or a single fluid flow path
## ! starting from a starting Connect Point Entity and
## ! including additional intermediate connect points.

type
  IGESAppli_Flow* {.importcpp: "IGESAppli_Flow", header: "IGESAppli_Flow.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_Flow*(): IGESAppli_Flow {.constructor,
    importcpp: "IGESAppli_Flow(@)", header: "IGESAppli_Flow.hxx".}
proc Init*(this: var IGESAppli_Flow; nbContextFlags: Standard_Integer;
          aFlowType: Standard_Integer; aFuncFlag: Standard_Integer;
          allFlowAssocs: handle[IGESData_HArray1OfIGESEntity];
          allConnectPoints: handle[IGESDraw_HArray1OfConnectPoint];
          allJoins: handle[IGESData_HArray1OfIGESEntity];
          allFlowNames: handle[Interface_HArray1OfHAsciiString];
          allTextDisps: handle[IGESGraph_HArray1OfTextDisplayTemplate];
          allContFlowAssocs: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESAppli_Flow.hxx".}
proc OwnCorrect*(this: var IGESAppli_Flow): Standard_Boolean {.
    importcpp: "OwnCorrect", header: "IGESAppli_Flow.hxx".}
proc NbContextFlags*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "NbContextFlags", header: "IGESAppli_Flow.hxx".}
proc NbFlowAssociativities*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "NbFlowAssociativities", header: "IGESAppli_Flow.hxx".}
proc NbConnectPoints*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "NbConnectPoints", header: "IGESAppli_Flow.hxx".}
proc NbJoins*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "NbJoins", header: "IGESAppli_Flow.hxx".}
proc NbFlowNames*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "NbFlowNames", header: "IGESAppli_Flow.hxx".}
proc NbTextDisplayTemplates*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "NbTextDisplayTemplates", header: "IGESAppli_Flow.hxx".}
proc NbContFlowAssociativities*(this: IGESAppli_Flow): Standard_Integer {.
    noSideEffect, importcpp: "NbContFlowAssociativities",
    header: "IGESAppli_Flow.hxx".}
proc TypeOfFlow*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "TypeOfFlow", header: "IGESAppli_Flow.hxx".}
proc FunctionFlag*(this: IGESAppli_Flow): Standard_Integer {.noSideEffect,
    importcpp: "FunctionFlag", header: "IGESAppli_Flow.hxx".}
proc FlowAssociativity*(this: IGESAppli_Flow; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "FlowAssociativity",
                          header: "IGESAppli_Flow.hxx".}
proc ConnectPoint*(this: IGESAppli_Flow; Index: Standard_Integer): handle[
    IGESDraw_ConnectPoint] {.noSideEffect, importcpp: "ConnectPoint",
                            header: "IGESAppli_Flow.hxx".}
proc Join*(this: IGESAppli_Flow; Index: Standard_Integer): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Join", header: "IGESAppli_Flow.hxx".}
proc FlowName*(this: IGESAppli_Flow; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "FlowName",
                               header: "IGESAppli_Flow.hxx".}
proc TextDisplayTemplate*(this: IGESAppli_Flow; Index: Standard_Integer): handle[
    IGESGraph_TextDisplayTemplate] {.noSideEffect,
                                    importcpp: "TextDisplayTemplate",
                                    header: "IGESAppli_Flow.hxx".}
proc ContFlowAssociativity*(this: IGESAppli_Flow; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "ContFlowAssociativity",
                          header: "IGESAppli_Flow.hxx".}
type
  IGESAppli_Flowbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_Flow::get_type_name(@)",
                              header: "IGESAppli_Flow.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_Flow::get_type_descriptor(@)",
    header: "IGESAppli_Flow.hxx".}
proc DynamicType*(this: IGESAppli_Flow): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_Flow.hxx".}