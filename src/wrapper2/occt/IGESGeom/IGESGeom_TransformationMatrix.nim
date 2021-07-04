##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray2OfReal, ../IGESData/IGESData_TransfEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_GTrsf"
discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of IGESGeom_TransformationMatrix"
type
  Handle_IGESGeom_TransformationMatrix* = handle[IGESGeom_TransformationMatrix]

## ! defines IGESTransformationMatrix, Type <124> Form <0>
## ! in package IGESGeom
## ! The transformation matrix entity transforms three-row column
## ! vectors by means of matrix multiplication and then a vector
## ! addition. This entity can be considered as an "operator"
## ! entity in that it starts with the input vector, operates on
## ! it as described above, and produces the output vector.

type
  IGESGeom_TransformationMatrix* {.importcpp: "IGESGeom_TransformationMatrix",
                                  header: "IGESGeom_TransformationMatrix.hxx",
                                  bycopy.} = object of IGESData_TransfEntity


proc constructIGESGeom_TransformationMatrix*(): IGESGeom_TransformationMatrix {.
    constructor, importcpp: "IGESGeom_TransformationMatrix(@)",
    header: "IGESGeom_TransformationMatrix.hxx".}
proc Init*(this: var IGESGeom_TransformationMatrix;
          aMatrix: handle[TColStd_HArray2OfReal]) {.importcpp: "Init",
    header: "IGESGeom_TransformationMatrix.hxx".}
proc SetFormNumber*(this: var IGESGeom_TransformationMatrix; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESGeom_TransformationMatrix.hxx".}
proc Data*(this: IGESGeom_TransformationMatrix; I: Standard_Integer;
          J: Standard_Integer): Standard_Real {.noSideEffect, importcpp: "Data",
    header: "IGESGeom_TransformationMatrix.hxx".}
proc Value*(this: IGESGeom_TransformationMatrix): gp_GTrsf {.noSideEffect,
    importcpp: "Value", header: "IGESGeom_TransformationMatrix.hxx".}
type
  IGESGeom_TransformationMatrixbase_type* = IGESData_TransfEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_TransformationMatrix::get_type_name(@)",
                              header: "IGESGeom_TransformationMatrix.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_TransformationMatrix::get_type_descriptor(@)",
    header: "IGESGeom_TransformationMatrix.hxx".}
proc DynamicType*(this: IGESGeom_TransformationMatrix): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGeom_TransformationMatrix.hxx".}