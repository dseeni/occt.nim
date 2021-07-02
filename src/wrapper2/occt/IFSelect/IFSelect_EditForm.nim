##  Created on: 1998-02-23
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of IFSelect_Editor"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of IFSelect_EditForm"
type
  HandleIFSelectEditForm* = Handle[IFSelectEditForm]

## ! An EditForm is the way to apply an Editor on an Entity or on
## ! the Model
## ! It gives read-only or read-write access, with or without undo
## !
## ! It can be complete (all the values of the Editor are present)
## ! or partial (a sub-list of these value are present)
## ! Anyway, all references to Number (argument <num>) refer to
## ! Number of Value for the Editor
## ! While references to Rank are for rank in the EditForm, which
## ! may differ if it is not Complete
## ! Two methods give the correspondance between this Number and
## ! the Rank in the EditForm : RankFromNumber and NumberFromRank

type
  IFSelectEditForm* {.importcpp: "IFSelect_EditForm",
                     header: "IFSelect_EditForm.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## complete
                                                                                      ## EditForm
                                                                                      ## from
                                                                                      ## an
                                                                                      ## Editor
                                                                                      ##
                                                                                      ## !
                                                                                      ## A
                                                                                      ## specific
                                                                                      ## Label
                                                                                      ## can
                                                                                      ## be
                                                                                      ## given


proc constructIFSelectEditForm*(editor: Handle[IFSelectEditor];
                               readonly: StandardBoolean;
                               undoable: StandardBoolean;
                               label: StandardCString = ""): IFSelectEditForm {.
    constructor, importcpp: "IFSelect_EditForm(@)", header: "IFSelect_EditForm.hxx".}
proc constructIFSelectEditForm*(editor: Handle[IFSelectEditor];
                               nums: TColStdSequenceOfInteger;
                               readonly: StandardBoolean;
                               undoable: StandardBoolean;
                               label: StandardCString = ""): IFSelectEditForm {.
    constructor, importcpp: "IFSelect_EditForm(@)", header: "IFSelect_EditForm.hxx".}
proc editKeepStatus*(this: var IFSelectEditForm): var StandardBoolean {.
    importcpp: "EditKeepStatus", header: "IFSelect_EditForm.hxx".}
proc label*(this: IFSelectEditForm): StandardCString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_EditForm.hxx".}
proc isLoaded*(this: IFSelectEditForm): StandardBoolean {.noSideEffect,
    importcpp: "IsLoaded", header: "IFSelect_EditForm.hxx".}
proc clearData*(this: var IFSelectEditForm) {.importcpp: "ClearData",
    header: "IFSelect_EditForm.hxx".}
proc setData*(this: var IFSelectEditForm; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]) {.importcpp: "SetData",
    header: "IFSelect_EditForm.hxx".}
proc setEntity*(this: var IFSelectEditForm; ent: Handle[StandardTransient]) {.
    importcpp: "SetEntity", header: "IFSelect_EditForm.hxx".}
proc setModel*(this: var IFSelectEditForm; model: Handle[InterfaceInterfaceModel]) {.
    importcpp: "SetModel", header: "IFSelect_EditForm.hxx".}
proc entity*(this: IFSelectEditForm): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Entity", header: "IFSelect_EditForm.hxx".}
proc model*(this: IFSelectEditForm): Handle[InterfaceInterfaceModel] {.noSideEffect,
    importcpp: "Model", header: "IFSelect_EditForm.hxx".}
proc editor*(this: IFSelectEditForm): Handle[IFSelectEditor] {.noSideEffect,
    importcpp: "Editor", header: "IFSelect_EditForm.hxx".}
proc isComplete*(this: IFSelectEditForm): StandardBoolean {.noSideEffect,
    importcpp: "IsComplete", header: "IFSelect_EditForm.hxx".}
proc nbValues*(this: IFSelectEditForm; editable: StandardBoolean): StandardInteger {.
    noSideEffect, importcpp: "NbValues", header: "IFSelect_EditForm.hxx".}
proc numberFromRank*(this: IFSelectEditForm; rank: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NumberFromRank", header: "IFSelect_EditForm.hxx".}
proc rankFromNumber*(this: IFSelectEditForm; number: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "RankFromNumber", header: "IFSelect_EditForm.hxx".}
proc nameNumber*(this: IFSelectEditForm; name: StandardCString): StandardInteger {.
    noSideEffect, importcpp: "NameNumber", header: "IFSelect_EditForm.hxx".}
proc nameRank*(this: IFSelectEditForm; name: StandardCString): StandardInteger {.
    noSideEffect, importcpp: "NameRank", header: "IFSelect_EditForm.hxx".}
proc loadDefault*(this: var IFSelectEditForm) {.importcpp: "LoadDefault",
    header: "IFSelect_EditForm.hxx".}
proc loadData*(this: var IFSelectEditForm; ent: Handle[StandardTransient];
              model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    importcpp: "LoadData", header: "IFSelect_EditForm.hxx".}
proc loadEntity*(this: var IFSelectEditForm; ent: Handle[StandardTransient]): StandardBoolean {.
    importcpp: "LoadEntity", header: "IFSelect_EditForm.hxx".}
proc loadModel*(this: var IFSelectEditForm; model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    importcpp: "LoadModel", header: "IFSelect_EditForm.hxx".}
proc loadData*(this: var IFSelectEditForm): StandardBoolean {.importcpp: "LoadData",
    header: "IFSelect_EditForm.hxx".}
proc listEditor*(this: IFSelectEditForm; num: StandardInteger): Handle[
    IFSelectListEditor] {.noSideEffect, importcpp: "ListEditor",
                         header: "IFSelect_EditForm.hxx".}
proc loadValue*(this: var IFSelectEditForm; num: StandardInteger;
               val: Handle[TCollectionHAsciiString]) {.importcpp: "LoadValue",
    header: "IFSelect_EditForm.hxx".}
proc loadList*(this: var IFSelectEditForm; num: StandardInteger;
              list: Handle[TColStdHSequenceOfHAsciiString]) {.
    importcpp: "LoadList", header: "IFSelect_EditForm.hxx".}
proc originalValue*(this: IFSelectEditForm; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "OriginalValue",
                              header: "IFSelect_EditForm.hxx".}
proc originalList*(this: IFSelectEditForm; num: StandardInteger): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "OriginalList",
                                     header: "IFSelect_EditForm.hxx".}
proc editedValue*(this: IFSelectEditForm; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "EditedValue",
                              header: "IFSelect_EditForm.hxx".}
proc editedList*(this: IFSelectEditForm; num: StandardInteger): Handle[
    TColStdHSequenceOfHAsciiString] {.noSideEffect, importcpp: "EditedList",
                                     header: "IFSelect_EditForm.hxx".}
proc isModified*(this: IFSelectEditForm; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsModified", header: "IFSelect_EditForm.hxx".}
proc isTouched*(this: IFSelectEditForm; num: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTouched", header: "IFSelect_EditForm.hxx".}
proc modify*(this: var IFSelectEditForm; num: StandardInteger;
            newval: Handle[TCollectionHAsciiString];
            enforce: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "Modify", header: "IFSelect_EditForm.hxx".}
proc modifyList*(this: var IFSelectEditForm; num: StandardInteger;
                edited: Handle[IFSelectListEditor];
                enforce: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ModifyList", header: "IFSelect_EditForm.hxx".}
proc modifyListValue*(this: var IFSelectEditForm; num: StandardInteger;
                     list: Handle[TColStdHSequenceOfHAsciiString];
                     enforce: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "ModifyListValue", header: "IFSelect_EditForm.hxx".}
proc touch*(this: var IFSelectEditForm; num: StandardInteger;
           newval: Handle[TCollectionHAsciiString]): StandardBoolean {.
    importcpp: "Touch", header: "IFSelect_EditForm.hxx".}
proc touchList*(this: var IFSelectEditForm; num: StandardInteger;
               newlist: Handle[TColStdHSequenceOfHAsciiString]): StandardBoolean {.
    importcpp: "TouchList", header: "IFSelect_EditForm.hxx".}
proc nbTouched*(this: IFSelectEditForm): StandardInteger {.noSideEffect,
    importcpp: "NbTouched", header: "IFSelect_EditForm.hxx".}
proc clearEdit*(this: var IFSelectEditForm; num: StandardInteger = 0) {.
    importcpp: "ClearEdit", header: "IFSelect_EditForm.hxx".}
proc printDefs*(this: IFSelectEditForm; s: var StandardOStream) {.noSideEffect,
    importcpp: "PrintDefs", header: "IFSelect_EditForm.hxx".}
proc printValues*(this: IFSelectEditForm; s: var StandardOStream;
                 what: StandardInteger; names: StandardBoolean;
                 alsolist: StandardBoolean = standardFalse) {.noSideEffect,
    importcpp: "PrintValues", header: "IFSelect_EditForm.hxx".}
proc apply*(this: var IFSelectEditForm): StandardBoolean {.importcpp: "Apply",
    header: "IFSelect_EditForm.hxx".}
proc recognize*(this: IFSelectEditForm): StandardBoolean {.noSideEffect,
    importcpp: "Recognize", header: "IFSelect_EditForm.hxx".}
proc applyData*(this: var IFSelectEditForm; ent: Handle[StandardTransient];
               model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    importcpp: "ApplyData", header: "IFSelect_EditForm.hxx".}
proc undo*(this: var IFSelectEditForm): StandardBoolean {.importcpp: "Undo",
    header: "IFSelect_EditForm.hxx".}
type
  IFSelectEditFormbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_EditForm::get_type_name(@)",
                            header: "IFSelect_EditForm.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_EditForm::get_type_descriptor(@)",
    header: "IFSelect_EditForm.hxx".}
proc dynamicType*(this: IFSelectEditForm): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_EditForm.hxx".}

