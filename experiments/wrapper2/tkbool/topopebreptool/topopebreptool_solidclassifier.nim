##  Created on: 1996-08-27
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TopoDS_Solid"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Shell"
type
  TopOpeBRepToolSolidClassifier* {.importcpp: "TopOpeBRepTool_SolidClassifier",
                                  header: "TopOpeBRepTool_SolidClassifier.hxx",
                                  bycopy.} = object


proc newTopOpeBRepToolSolidClassifier*(): TopOpeBRepToolSolidClassifier {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_SolidClassifier(@)", dynlib: tkbool.}
proc clear*(this: var TopOpeBRepToolSolidClassifier) {.cdecl, importcpp: "Clear",
    dynlib: tkbool.}
proc destroyTopOpeBRepToolSolidClassifier*(
    this: var TopOpeBRepToolSolidClassifier) {.cdecl,
    importcpp: "#.~TopOpeBRepTool_SolidClassifier()", dynlib: tkbool.}
proc loadSolid*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Solid) {.cdecl,
    importcpp: "LoadSolid", dynlib: tkbool.}
proc classify*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Solid; p: Pnt;
              tol: cfloat): TopAbsState {.cdecl, importcpp: "Classify", dynlib: tkbool.}
proc loadShell*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Shell) {.cdecl,
    importcpp: "LoadShell", dynlib: tkbool.}
proc classify*(this: var TopOpeBRepToolSolidClassifier; s: TopoDS_Shell; p: Pnt;
              tol: cfloat): TopAbsState {.cdecl, importcpp: "Classify", dynlib: tkbool.}
proc state*(this: TopOpeBRepToolSolidClassifier): TopAbsState {.noSideEffect, cdecl,
    importcpp: "State", dynlib: tkbool.}