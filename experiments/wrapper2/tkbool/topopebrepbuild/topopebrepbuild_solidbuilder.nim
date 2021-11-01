##  Created on: 1995-12-21
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepBuild_ShellFaceSet"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepBuild_ShapeSet"
type
  TopOpeBRepBuildSolidBuilder* {.importcpp: "TopOpeBRepBuild_SolidBuilder",
                                header: "TopOpeBRepBuild_SolidBuilder.hxx", bycopy.} = object


proc newTopOpeBRepBuildSolidBuilder*(): TopOpeBRepBuildSolidBuilder {.cdecl,
    constructor, importcpp: "TopOpeBRepBuild_SolidBuilder(@)", dynlib: tkbool.}
proc newTopOpeBRepBuildSolidBuilder*(fs: var TopOpeBRepBuildShellFaceSet;
                                    forceClass: bool = false): TopOpeBRepBuildSolidBuilder {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_SolidBuilder(@)", dynlib: tkbool.}
proc initSolidBuilder*(this: var TopOpeBRepBuildSolidBuilder;
                      fs: var TopOpeBRepBuildShellFaceSet; forceClass: bool) {.cdecl,
    importcpp: "InitSolidBuilder", dynlib: tkbool.}
proc initSolid*(this: var TopOpeBRepBuildSolidBuilder): cint {.cdecl,
    importcpp: "InitSolid", dynlib: tkbool.}
proc moreSolid*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreSolid", dynlib: tkbool.}
proc nextSolid*(this: var TopOpeBRepBuildSolidBuilder) {.cdecl,
    importcpp: "NextSolid", dynlib: tkbool.}
proc initShell*(this: var TopOpeBRepBuildSolidBuilder): cint {.cdecl,
    importcpp: "InitShell", dynlib: tkbool.}
proc moreShell*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreShell", dynlib: tkbool.}
proc nextShell*(this: var TopOpeBRepBuildSolidBuilder) {.cdecl,
    importcpp: "NextShell", dynlib: tkbool.}
proc isOldShell*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect, cdecl,
    importcpp: "IsOldShell", dynlib: tkbool.}
proc oldShell*(this: TopOpeBRepBuildSolidBuilder): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "OldShell", dynlib: tkbool.}
proc initFace*(this: var TopOpeBRepBuildSolidBuilder): cint {.cdecl,
    importcpp: "InitFace", dynlib: tkbool.}
proc moreFace*(this: TopOpeBRepBuildSolidBuilder): bool {.noSideEffect, cdecl,
    importcpp: "MoreFace", dynlib: tkbool.}
proc nextFace*(this: var TopOpeBRepBuildSolidBuilder) {.cdecl, importcpp: "NextFace",
    dynlib: tkbool.}
proc face*(this: TopOpeBRepBuildSolidBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkbool.}