##  Created on: 1994-03-24
##  Created by: model
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Adaptor2d_HLine2d"
discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_TopolTool"
type
  HandleAdaptor3dTopolTool* = Handle[Adaptor3dTopolTool]

## ! This class provides a default topological tool,
## ! based on the Umin,Vmin,Umax,Vmax of an HSurface
## ! from Adaptor3d.
## ! All methods and fields may be redefined when
## ! inheriting from this class.
## ! This class is used to instantiate algorithmes
## ! as Intersection, outlines,...

type
  Adaptor3dTopolTool* {.importcpp: "Adaptor3d_TopolTool",
                       header: "Adaptor3d_TopolTool.hxx", bycopy.} = object of StandardTransient


proc newAdaptor3dTopolTool*(): Adaptor3dTopolTool {.cdecl, constructor,
    importcpp: "Adaptor3d_TopolTool(@)", dynlib: tkg3d.}
proc newAdaptor3dTopolTool*(surface: Handle[Adaptor3dHSurface]): Adaptor3dTopolTool {.
    cdecl, constructor, importcpp: "Adaptor3d_TopolTool(@)", dynlib: tkg3d.}
proc initialize*(this: var Adaptor3dTopolTool) {.cdecl, importcpp: "Initialize",
    dynlib: tkg3d.}
proc initialize*(this: var Adaptor3dTopolTool; s: Handle[Adaptor3dHSurface]) {.cdecl,
    importcpp: "Initialize", dynlib: tkg3d.}
proc initialize*(this: var Adaptor3dTopolTool; curve: Handle[Adaptor2dHCurve2d]) {.
    cdecl, importcpp: "Initialize", dynlib: tkg3d.}
proc init*(this: var Adaptor3dTopolTool) {.cdecl, importcpp: "Init", dynlib: tkg3d.}
proc more*(this: var Adaptor3dTopolTool): bool {.cdecl, importcpp: "More", dynlib: tkg3d.}
proc value*(this: var Adaptor3dTopolTool): Handle[Adaptor2dHCurve2d] {.cdecl,
    importcpp: "Value", dynlib: tkg3d.}
proc next*(this: var Adaptor3dTopolTool) {.cdecl, importcpp: "Next", dynlib: tkg3d.}
proc initVertexIterator*(this: var Adaptor3dTopolTool) {.cdecl,
    importcpp: "InitVertexIterator", dynlib: tkg3d.}
proc moreVertex*(this: var Adaptor3dTopolTool): bool {.cdecl, importcpp: "MoreVertex",
    dynlib: tkg3d.}
proc vertex*(this: var Adaptor3dTopolTool): Handle[Adaptor3dHVertex] {.cdecl,
    importcpp: "Vertex", dynlib: tkg3d.}
proc nextVertex*(this: var Adaptor3dTopolTool) {.cdecl, importcpp: "NextVertex",
    dynlib: tkg3d.}
proc classify*(this: var Adaptor3dTopolTool; p: Pnt2d; tol: cfloat;
              reacdreOnPeriodic: bool = true): TopAbsState {.cdecl,
    importcpp: "Classify", dynlib: tkg3d.}
proc isThePointOn*(this: var Adaptor3dTopolTool; p: Pnt2d; tol: cfloat;
                  reacdreOnPeriodic: bool = true): bool {.cdecl,
    importcpp: "IsThePointOn", dynlib: tkg3d.}
proc orientation*(this: var Adaptor3dTopolTool; c: Handle[Adaptor2dHCurve2d]): TopAbsOrientation {.
    cdecl, importcpp: "Orientation", dynlib: tkg3d.}
proc orientation*(this: var Adaptor3dTopolTool; v: Handle[Adaptor3dHVertex]): TopAbsOrientation {.
    cdecl, importcpp: "Orientation", dynlib: tkg3d.}
proc identical*(this: var Adaptor3dTopolTool; v1: Handle[Adaptor3dHVertex];
               v2: Handle[Adaptor3dHVertex]): bool {.cdecl, importcpp: "Identical",
    dynlib: tkg3d.}
proc has3d*(this: Adaptor3dTopolTool): bool {.noSideEffect, cdecl, importcpp: "Has3d",
    dynlib: tkg3d.}
proc tol3d*(this: Adaptor3dTopolTool; c: Handle[Adaptor2dHCurve2d]): cfloat {.
    noSideEffect, cdecl, importcpp: "Tol3d", dynlib: tkg3d.}
proc tol3d*(this: Adaptor3dTopolTool; v: Handle[Adaptor3dHVertex]): cfloat {.
    noSideEffect, cdecl, importcpp: "Tol3d", dynlib: tkg3d.}
proc pnt*(this: Adaptor3dTopolTool; v: Handle[Adaptor3dHVertex]): Pnt {.noSideEffect,
    cdecl, importcpp: "Pnt", dynlib: tkg3d.}
proc computeSamplePoints*(this: var Adaptor3dTopolTool) {.cdecl,
    importcpp: "ComputeSamplePoints", dynlib: tkg3d.}
proc nbSamplesU*(this: var Adaptor3dTopolTool): cint {.cdecl, importcpp: "NbSamplesU",
    dynlib: tkg3d.}
proc nbSamplesV*(this: var Adaptor3dTopolTool): cint {.cdecl, importcpp: "NbSamplesV",
    dynlib: tkg3d.}
proc nbSamples*(this: var Adaptor3dTopolTool): cint {.cdecl, importcpp: "NbSamples",
    dynlib: tkg3d.}
proc uParameters*(this: Adaptor3dTopolTool; theArray: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "UParameters", dynlib: tkg3d.}
proc vParameters*(this: Adaptor3dTopolTool; theArray: var TColStdArray1OfReal) {.
    noSideEffect, cdecl, importcpp: "VParameters", dynlib: tkg3d.}
proc samplePoint*(this: var Adaptor3dTopolTool; index: cint; p2d: var Pnt2d; p3d: var Pnt) {.
    cdecl, importcpp: "SamplePoint", dynlib: tkg3d.}
proc domainIsInfinite*(this: var Adaptor3dTopolTool): bool {.cdecl,
    importcpp: "DomainIsInfinite", dynlib: tkg3d.}
proc edge*(this: Adaptor3dTopolTool): pointer {.noSideEffect, cdecl,
    importcpp: "Edge", dynlib: tkg3d.}
proc samplePnts*(this: var Adaptor3dTopolTool; theDefl: cfloat; theNUmin: cint;
                theNVmin: cint) {.cdecl, importcpp: "SamplePnts", dynlib: tkg3d.}
proc bSplSamplePnts*(this: var Adaptor3dTopolTool; theDefl: cfloat; theNUmin: cint;
                    theNVmin: cint) {.cdecl, importcpp: "BSplSamplePnts",
                                    dynlib: tkg3d.}
proc isUniformSampling*(this: Adaptor3dTopolTool): bool {.noSideEffect, cdecl,
    importcpp: "IsUniformSampling", dynlib: tkg3d.}