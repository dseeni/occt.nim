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

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of IGESBasic_HArray1OfHArray1OfReal"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_FiniteElement"
discard "forward decl of IGESAppli_ElementResults"
discard "forward decl of IGESAppli_ElementResults"
type
  HandleIGESAppliElementResults* = Handle[IGESAppliElementResults]

## ! defines ElementResults, Type <148>
## ! in package IGESAppli
## ! Used to find the results of FEM analysis

type
  IGESAppliElementResults* {.importcpp: "IGESAppli_ElementResults",
                            header: "IGESAppli_ElementResults.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliElementResults*(): IGESAppliElementResults {.constructor,
    importcpp: "IGESAppli_ElementResults(@)",
    header: "IGESAppli_ElementResults.hxx".}
proc init*(this: var IGESAppliElementResults; aNote: Handle[IGESDimenGeneralNote];
          aSubCase: int; aTime: float; nbResults: int; aResRepFlag: int;
          allElementIdents: Handle[TColStdHArray1OfInteger];
          allFiniteElems: Handle[IGESAppliHArray1OfFiniteElement];
          allTopTypes: Handle[TColStdHArray1OfInteger];
          nbLayers: Handle[TColStdHArray1OfInteger];
          allDataLayerFlags: Handle[TColStdHArray1OfInteger];
          allnbResDataLocs: Handle[TColStdHArray1OfInteger];
          allResDataLocs: Handle[IGESBasicHArray1OfHArray1OfInteger];
          allResults: Handle[IGESBasicHArray1OfHArray1OfReal]) {.
    importcpp: "Init", header: "IGESAppli_ElementResults.hxx".}
proc setFormNumber*(this: var IGESAppliElementResults; form: int) {.
    importcpp: "SetFormNumber", header: "IGESAppli_ElementResults.hxx".}
proc note*(this: IGESAppliElementResults): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESAppli_ElementResults.hxx".}
proc subCaseNumber*(this: IGESAppliElementResults): int {.noSideEffect,
    importcpp: "SubCaseNumber", header: "IGESAppli_ElementResults.hxx".}
proc time*(this: IGESAppliElementResults): float {.noSideEffect, importcpp: "Time",
    header: "IGESAppli_ElementResults.hxx".}
proc nbResultValues*(this: IGESAppliElementResults): int {.noSideEffect,
    importcpp: "NbResultValues", header: "IGESAppli_ElementResults.hxx".}
proc resultReportFlag*(this: IGESAppliElementResults): int {.noSideEffect,
    importcpp: "ResultReportFlag", header: "IGESAppli_ElementResults.hxx".}
proc nbElements*(this: IGESAppliElementResults): int {.noSideEffect,
    importcpp: "NbElements", header: "IGESAppli_ElementResults.hxx".}
proc elementIdentifier*(this: IGESAppliElementResults; index: int): int {.
    noSideEffect, importcpp: "ElementIdentifier",
    header: "IGESAppli_ElementResults.hxx".}
proc element*(this: IGESAppliElementResults; index: int): Handle[
    IGESAppliFiniteElement] {.noSideEffect, importcpp: "Element",
                             header: "IGESAppli_ElementResults.hxx".}
proc elementTopologyType*(this: IGESAppliElementResults; index: int): int {.
    noSideEffect, importcpp: "ElementTopologyType",
    header: "IGESAppli_ElementResults.hxx".}
proc nbLayers*(this: IGESAppliElementResults; index: int): int {.noSideEffect,
    importcpp: "NbLayers", header: "IGESAppli_ElementResults.hxx".}
proc dataLayerFlag*(this: IGESAppliElementResults; index: int): int {.noSideEffect,
    importcpp: "DataLayerFlag", header: "IGESAppli_ElementResults.hxx".}
proc nbResultDataLocs*(this: IGESAppliElementResults; index: int): int {.noSideEffect,
    importcpp: "NbResultDataLocs", header: "IGESAppli_ElementResults.hxx".}
proc resultDataLoc*(this: IGESAppliElementResults; nElem: int; nLoc: int): int {.
    noSideEffect, importcpp: "ResultDataLoc",
    header: "IGESAppli_ElementResults.hxx".}
proc nbResults*(this: IGESAppliElementResults; index: int): int {.noSideEffect,
    importcpp: "NbResults", header: "IGESAppli_ElementResults.hxx".}
proc resultData*(this: IGESAppliElementResults; nElem: int; num: int): float {.
    noSideEffect, importcpp: "ResultData", header: "IGESAppli_ElementResults.hxx".}
proc resultRank*(this: IGESAppliElementResults; nElem: int; nVal: int; nLay: int;
                nLoc: int): int {.noSideEffect, importcpp: "ResultRank",
                               header: "IGESAppli_ElementResults.hxx".}
proc resultData*(this: IGESAppliElementResults; nElem: int; nVal: int; nLay: int;
                nLoc: int): float {.noSideEffect, importcpp: "ResultData",
                                 header: "IGESAppli_ElementResults.hxx".}
proc resultList*(this: IGESAppliElementResults; nElem: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "ResultList",
                           header: "IGESAppli_ElementResults.hxx".}
type
  IGESAppliElementResultsbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_ElementResults::get_type_name(@)",
                            header: "IGESAppli_ElementResults.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_ElementResults::get_type_descriptor(@)",
    header: "IGESAppli_ElementResults.hxx".}
proc dynamicType*(this: IGESAppliElementResults): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_ElementResults.hxx".}
