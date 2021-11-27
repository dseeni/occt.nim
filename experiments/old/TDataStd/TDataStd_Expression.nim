##  Created on: 1997-12-16
##  Created by: Denis PASCAL
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Expression"
discard "forward decl of TDataStd_Expression"
type
  HandleC1C1* = Handle[TDataStdExpression]

## ! Expression attribute.
## ! ====================
## !
## ! * Data Structure  of the Expression   is stored in a
## ! string and references to variables used by the string
## !
## ! Warning:  To be consistent,  each  Variable  referenced by  the
## ! expression must have its equivalent in the string

type
  TDataStdExpression* {.importcpp: "TDataStd_Expression",
                       header: "TDataStd_Expression.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                      ## !
                                                                                      ## class
                                                                                      ## methods
                                                                                      ##
                                                                                      ## !
                                                                                      ## =============


proc getID*(): StandardGUID {.importcpp: "TDataStd_Expression::GetID(@)",
                           header: "TDataStd_Expression.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdExpression] {.
    importcpp: "TDataStd_Expression::Set(@)", header: "TDataStd_Expression.hxx".}
proc constructTDataStdExpression*(): TDataStdExpression {.constructor,
    importcpp: "TDataStd_Expression(@)", header: "TDataStd_Expression.hxx".}
proc name*(this: TDataStdExpression): TCollectionExtendedString {.noSideEffect,
    importcpp: "Name", header: "TDataStd_Expression.hxx".}
proc setExpression*(this: var TDataStdExpression; e: TCollectionExtendedString) {.
    importcpp: "SetExpression", header: "TDataStd_Expression.hxx".}
proc getExpression*(this: TDataStdExpression): TCollectionExtendedString {.
    noSideEffect, importcpp: "GetExpression", header: "TDataStd_Expression.hxx".}
proc getVariables*(this: var TDataStdExpression): var TDF_AttributeList {.
    importcpp: "GetVariables", header: "TDataStd_Expression.hxx".}
proc id*(this: TDataStdExpression): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_Expression.hxx".}
proc restore*(this: var TDataStdExpression; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_Expression.hxx".}
proc newEmpty*(this: TDataStdExpression): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_Expression.hxx".}
proc paste*(this: TDataStdExpression; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_Expression.hxx".}
proc dump*(this: TDataStdExpression; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Expression.hxx".}
proc dumpJson*(this: TDataStdExpression; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_Expression.hxx".}
type
  TDataStdExpressionbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_Expression::get_type_name(@)",
                            header: "TDataStd_Expression.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_Expression::get_type_descriptor(@)",
    header: "TDataStd_Expression.hxx".}
proc dynamicType*(this: TDataStdExpression): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_Expression.hxx".}
























