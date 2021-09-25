##  Created on: 1991-01-14
##  Created by: Arnaud BOUZY
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_NumericError"
discard "forward decl of Expr_GeneralExpression"
discard "forward decl of Expr_GeneralRelation"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Expr_LessThanOrEqual"
discard "forward decl of Expr_LessThanOrEqual"
type
  HandleExprLessThanOrEqual* = Handle[ExprLessThanOrEqual]
  ExprLessThanOrEqual* {.importcpp: "Expr_LessThanOrEqual",
                        header: "Expr_LessThanOrEqual.hxx", bycopy.} = object of ExprSingleRelation ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## the
                                                                                             ## relation
                                                                                             ## <exp1>
                                                                                             ## <=
                                                                                             ## <exp2>.


proc constructExprLessThanOrEqual*(exp1: Handle[ExprGeneralExpression];
                                  exp2: Handle[ExprGeneralExpression]): ExprLessThanOrEqual {.
    constructor, importcpp: "Expr_LessThanOrEqual(@)",
    header: "Expr_LessThanOrEqual.hxx".}
proc isSatisfied*(this: ExprLessThanOrEqual): bool {.noSideEffect,
    importcpp: "IsSatisfied", header: "Expr_LessThanOrEqual.hxx".}
proc simplified*(this: ExprLessThanOrEqual): Handle[ExprGeneralRelation] {.
    noSideEffect, importcpp: "Simplified", header: "Expr_LessThanOrEqual.hxx".}
proc simplify*(this: var ExprLessThanOrEqual) {.importcpp: "Simplify",
    header: "Expr_LessThanOrEqual.hxx".}
proc copy*(this: ExprLessThanOrEqual): Handle[ExprGeneralRelation] {.noSideEffect,
    importcpp: "Copy", header: "Expr_LessThanOrEqual.hxx".}
proc string*(this: ExprLessThanOrEqual): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Expr_LessThanOrEqual.hxx".}
type
  ExprLessThanOrEqualbaseType* = ExprSingleRelation

proc getTypeName*(): cstring {.importcpp: "Expr_LessThanOrEqual::get_type_name(@)",
                            header: "Expr_LessThanOrEqual.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Expr_LessThanOrEqual::get_type_descriptor(@)",
    header: "Expr_LessThanOrEqual.hxx".}
proc dynamicType*(this: ExprLessThanOrEqual): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Expr_LessThanOrEqual.hxx".}
