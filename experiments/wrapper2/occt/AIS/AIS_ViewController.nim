##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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

discard "forward decl of AIS_AnimationCamera"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of AIS_InteractiveContext"
discard "forward decl of AIS_Point"
discard "forward decl of AIS_RubberBand"
discard "forward decl of AIS_XRTrackedDevice"
discard "forward decl of Graphic3d_Camera"
discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of V3d_View"
discard "forward decl of WNT_HIDSpaceMouse"
type
  AIS_ViewController* {.importcpp: "AIS_ViewController",
                       header: "AIS_ViewController.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor.
                                                                      ## ! @name global parameters
                                                                      ## ! Return camera rotation mode,
                                                                      ## AIS_RotationMode_BndBoxActive by default.
                                                                      ## ! @name keyboard input
                                                                      ## ! Return keyboard state.
                                                                      ## ! @name mouse input
                                                                      ## ! Return map defining mouse gestures.
                                                                      ## ! @name
                                                                      ## multi-touch input
                                                                      ## ! Return scale factor for adjusting tolerances for starting
                                                                      ## multi-touch gestures; 1.0 by default
                                                                      ## ! This scale factor is expected to be computed from touch screen
                                                                      ## resolution.
                                                                      ## ! @name 3d mouse input
                                                                      ## ! Return
                                                                      ## acceleration ratio for
                                                                      ## translation event; 2.0 by default.
                                                                      ## ! Return event time (e.g. current time).
                                                                      ## ! Callback called by
                                                                      ## handleMoveTo() on Selection in 3D Viewer.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Handle hot-keys defining new camera
                                                                      ## orientation
                                                                      ## (Aspect_VKey_ViewTop and similar keys).
                                                                      ## ! Default
                                                                      ## implementation starts an animated
                                                                      ## transaction from the current to the target camera
                                                                      ## orientation, when specific action key was pressed.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Perform XR input.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Flush buffers.
                                                                      ## ! @name XR input variables
                                                                      ## ! @name keyboard input variables
                                                                      ## ! @name mouse input variables
                                                                      ## ! @name
                                                                      ## multi-touch input variables
                                                                      ## ! @name 3d mouse input variables
                                                                      ## ! @name
                                                                      ## rotation/panning transient state variables
    ## !< buffer for UI thread
    ## !< buffer for rendering thread
    ## !< timer for timestamping events
    ## !< last fetched events timer value for computing delta/progress
    ## !< flag indicating that another frame should be drawn right after this one
    ## !< minimal camera distance for zoom operation
    ## !< rotation mode
    ## !< navigation mode (orbit rotation / first person)
    ## !< mouse input acceleration ratio in First Person mode
    ## !< Orbit rotation acceleration ratio
    ## !< option displaying panning  anchor point
    ## !< option displaying rotation center point
    ## !< force camera up orientation within AIS_NavigationMode_Orbit rotation mode
    ## !< flag inverting pitch direction while processing Aspect_VKey_NavLookUp/Aspect_VKey_NavLookDown
    ## !< enable z-rotation two-touches gesture; FALSE by default
    ## !< enable rotation; TRUE by default
    ## !< enable panning; TRUE by default
    ## !< enable zooming; TRUE by default
    ## !< enable ZFocus change; TRUE by default
    ## !< enable dynamic highlight on mouse move; TRUE by default
    ## !< enable dragging object; TRUE by default
    ## !< project picked point to ray while zooming at point, TRUE by default
    ## !< project picked point to ray while rotating around point; TRUE by default
    ## !< normal walking speed, in m/s; 1.5 by default
    ## !< walking speed relative to scene bounding box; 0.1 by default
    ## !< active thrust value
    ## !< flag indicating active thrust
    ## !< view animation
    ## !< Rubber-band presentation
    ## !< detected owner of currently dragged object
    ## !< currently dragged object
    ## !< previous position of MoveTo event in 3D viewer
    ## !< flag for restoring Computed mode after rotation
    ## !< array of XR tracked devices presentations
    ## !< temporary camera
    ## !< color of teleport laser
    ## !< color of picking  laser
    ## !< active hand for teleport
    ## !< active hand for picking objects
    ## !< vibration on picking teleport destination
    ## !< vibration on dynamic highlighting
    ## !< vibration on selection
    ## !< last picking depth for left  hand
    ## !< last picking depth for right hand
    ## !< discrete turn angle for XR trackpad
    ## !< flag to display auxiliary tracked XR devices
    ## !< flag to display XR hands
    ## !< keyboard state
    ## !< mouse click threshold in pixels; 3 by default
    ## !< double click interval in seconds; 0.4 by default
    ## !< distance ratio for mapping mouse scroll event to zoom; 15.0 by default
    ## !< map defining mouse gestures
    ## !< initiated mouse gesture (by pressing mouse button)
    ## !< flag indicating view idle rotation state
    ## !< last mouse position
    ## !< mouse position where active gesture was been initiated
    ## !< gesture progress
    ## !< timer for handling double-click event
    ## !< counter for handling double-click event
    ## !< active mouse buttons
    ## !< active key modifiers passed with last mouse event
    ## !< index of mouse button pressed alone (>0)
    ## !< queue stop dragging even with at next mouse unclick
    ## !< tolerance scale factor; 1.0 by default
    ## !< threshold for starting one-touch rotation     gesture in pixels;  6 by default
    ## !< threshold for starting two-touch Z-rotation   gesture in radians; 2 degrees by default
    ## !< threshold for starting two-touch panning      gesture in pixels;  4 by default
    ## !< threshold for starting two-touch zoom (pitch) gesture in pixels;  6 by default
    ## !< distance ratio for mapping two-touch zoom (pitch) gesture from pixels to zoom; 0.13 by default
    ## !< map of active touches
    ## !< touch coordinates at the moment of starting panning  gesture
    ## !< touch coordinates at the moment of starting rotating gesture
    ## !< number of touches within previous gesture flush to track gesture changes
    ## !< flag indicating that new anchor  point should be picked for starting panning    gesture
    ## !< flag indicating that new gravity point should be picked for starting rotation   gesture
    ## !< flag indicating that new gravity point should be picked for starting Z-rotation gesture
    ## !< cached button state
    ## !< ignore  3d mouse rotation axes
    ## !< reverse 3d mouse rotation axes
    ## !< acceleration ratio for translation event
    ## !< acceleration ratio for rotation event
    ## !< quadric acceleration
    ## !< anchor point presentation (Graphic3d_ZLayerId_Top)
    ## !< anchor point presentation (Graphic3d_ZLayerId_Topmost)
    ## !< active panning anchor point
    ## !< active rotation center of gravity
    ## !< camera Up    direction at the beginning of rotation
    ## !< camera View  direction at the beginning of rotation
    ## !< camera Eye    position at the beginning of rotation
    ## !< camera Center position at the beginning of rotation
    ## !< vector from rotation gravity point to camera Center at the beginning of rotation
    ## !< vector from rotation gravity point to camera Eye    at the beginning of rotation
    ## !< camera yaw pitch roll at the beginning of rotation


proc constructAIS_ViewController*(): AIS_ViewController {.constructor,
    importcpp: "AIS_ViewController(@)", header: "AIS_ViewController.hxx".}
proc destroyAIS_ViewController*(this: var AIS_ViewController) {.
    importcpp: "#.~AIS_ViewController()", header: "AIS_ViewController.hxx".}
proc inputBuffer*(this: AIS_ViewController; theType: AIS_ViewInputBufferType): AIS_ViewInputBuffer {.
    noSideEffect, importcpp: "InputBuffer", header: "AIS_ViewController.hxx".}
proc changeInputBuffer*(this: var AIS_ViewController;
                       theType: AIS_ViewInputBufferType): var AIS_ViewInputBuffer {.
    importcpp: "ChangeInputBuffer", header: "AIS_ViewController.hxx".}
proc viewAnimation*(this: AIS_ViewController): Handle[AIS_AnimationCamera] {.
    noSideEffect, importcpp: "ViewAnimation", header: "AIS_ViewController.hxx".}
proc setViewAnimation*(this: var AIS_ViewController;
                      theAnimation: Handle[AIS_AnimationCamera]) {.
    importcpp: "SetViewAnimation", header: "AIS_ViewController.hxx".}
proc abortViewAnimation*(this: var AIS_ViewController) {.
    importcpp: "AbortViewAnimation", header: "AIS_ViewController.hxx".}
proc rotationMode*(this: AIS_ViewController): AIS_RotationMode {.noSideEffect,
    importcpp: "RotationMode", header: "AIS_ViewController.hxx".}
proc setRotationMode*(this: var AIS_ViewController; theMode: AIS_RotationMode) {.
    importcpp: "SetRotationMode", header: "AIS_ViewController.hxx".}
proc navigationMode*(this: AIS_ViewController): AIS_NavigationMode {.noSideEffect,
    importcpp: "NavigationMode", header: "AIS_ViewController.hxx".}
proc setNavigationMode*(this: var AIS_ViewController; theMode: AIS_NavigationMode) {.
    importcpp: "SetNavigationMode", header: "AIS_ViewController.hxx".}
proc mouseAcceleration*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "MouseAcceleration", header: "AIS_ViewController.hxx".}
proc setMouseAcceleration*(this: var AIS_ViewController; theRatio: cfloat) {.
    importcpp: "SetMouseAcceleration", header: "AIS_ViewController.hxx".}
proc orbitAcceleration*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "OrbitAcceleration", header: "AIS_ViewController.hxx".}
proc setOrbitAcceleration*(this: var AIS_ViewController; theRatio: cfloat) {.
    importcpp: "SetOrbitAcceleration", header: "AIS_ViewController.hxx".}
proc toShowPanAnchorPoint*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToShowPanAnchorPoint", header: "AIS_ViewController.hxx".}
proc setShowPanAnchorPoint*(this: var AIS_ViewController; theToShow: bool) {.
    importcpp: "SetShowPanAnchorPoint", header: "AIS_ViewController.hxx".}
proc toShowRotateCenter*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToShowRotateCenter", header: "AIS_ViewController.hxx".}
proc setShowRotateCenter*(this: var AIS_ViewController; theToShow: bool) {.
    importcpp: "SetShowRotateCenter", header: "AIS_ViewController.hxx".}
proc toLockOrbitZUp*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToLockOrbitZUp", header: "AIS_ViewController.hxx".}
proc setLockOrbitZUp*(this: var AIS_ViewController; theToForceUp: bool) {.
    importcpp: "SetLockOrbitZUp", header: "AIS_ViewController.hxx".}
proc toAllowTouchZRotation*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowTouchZRotation", header: "AIS_ViewController.hxx".}
proc setAllowTouchZRotation*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowTouchZRotation", header: "AIS_ViewController.hxx".}
proc toAllowRotation*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowRotation", header: "AIS_ViewController.hxx".}
proc setAllowRotation*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowRotation", header: "AIS_ViewController.hxx".}
proc toAllowPanning*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowPanning", header: "AIS_ViewController.hxx".}
proc setAllowPanning*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowPanning", header: "AIS_ViewController.hxx".}
proc toAllowZooming*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowZooming", header: "AIS_ViewController.hxx".}
proc setAllowZooming*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowZooming", header: "AIS_ViewController.hxx".}
proc toAllowZFocus*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowZFocus", header: "AIS_ViewController.hxx".}
proc setAllowZFocus*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowZFocus", header: "AIS_ViewController.hxx".}
proc toAllowHighlight*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowHighlight", header: "AIS_ViewController.hxx".}
proc setAllowHighlight*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowHighlight", header: "AIS_ViewController.hxx".}
proc toAllowDragging*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToAllowDragging", header: "AIS_ViewController.hxx".}
proc setAllowDragging*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetAllowDragging", header: "AIS_ViewController.hxx".}
proc toStickToRayOnZoom*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToStickToRayOnZoom", header: "AIS_ViewController.hxx".}
proc setStickToRayOnZoom*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetStickToRayOnZoom", header: "AIS_ViewController.hxx".}
proc toStickToRayOnRotation*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToStickToRayOnRotation", header: "AIS_ViewController.hxx".}
proc setStickToRayOnRotation*(this: var AIS_ViewController; theToEnable: bool) {.
    importcpp: "SetStickToRayOnRotation", header: "AIS_ViewController.hxx".}
proc toInvertPitch*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToInvertPitch", header: "AIS_ViewController.hxx".}
proc setInvertPitch*(this: var AIS_ViewController; theToInvert: bool) {.
    importcpp: "SetInvertPitch", header: "AIS_ViewController.hxx".}
proc walkSpeedAbsolute*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "WalkSpeedAbsolute", header: "AIS_ViewController.hxx".}
proc setWalkSpeedAbsolute*(this: var AIS_ViewController; theSpeed: cfloat) {.
    importcpp: "SetWalkSpeedAbsolute", header: "AIS_ViewController.hxx".}
proc walkSpeedRelative*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "WalkSpeedRelative", header: "AIS_ViewController.hxx".}
proc setWalkSpeedRelative*(this: var AIS_ViewController; theFactor: cfloat) {.
    importcpp: "SetWalkSpeedRelative", header: "AIS_ViewController.hxx".}
proc thrustSpeed*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "ThrustSpeed", header: "AIS_ViewController.hxx".}
proc setThrustSpeed*(this: var AIS_ViewController; theSpeed: cfloat) {.
    importcpp: "SetThrustSpeed", header: "AIS_ViewController.hxx".}
proc hasPreviousMoveTo*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "HasPreviousMoveTo", header: "AIS_ViewController.hxx".}
proc previousMoveTo*(this: AIS_ViewController): Graphic3dVec2i {.noSideEffect,
    importcpp: "PreviousMoveTo", header: "AIS_ViewController.hxx".}
proc resetPreviousMoveTo*(this: var AIS_ViewController) {.
    importcpp: "ResetPreviousMoveTo", header: "AIS_ViewController.hxx".}
proc toDisplayXRAuxDevices*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToDisplayXRAuxDevices", header: "AIS_ViewController.hxx".}
proc setDisplayXRAuxDevices*(this: var AIS_ViewController; theToDisplay: bool) {.
    importcpp: "SetDisplayXRAuxDevices", header: "AIS_ViewController.hxx".}
proc toDisplayXRHands*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "ToDisplayXRHands", header: "AIS_ViewController.hxx".}
proc setDisplayXRHands*(this: var AIS_ViewController; theToDisplay: bool) {.
    importcpp: "SetDisplayXRHands", header: "AIS_ViewController.hxx".}
proc keys*(this: AIS_ViewController): AspectVKeySet {.noSideEffect,
    importcpp: "Keys", header: "AIS_ViewController.hxx".}
proc changeKeys*(this: var AIS_ViewController): var AspectVKeySet {.
    importcpp: "ChangeKeys", header: "AIS_ViewController.hxx".}
proc keyDown*(this: var AIS_ViewController; theKey: AspectVKey; theTime: cdouble;
             thePressure: cdouble = 1.0) {.importcpp: "KeyDown",
                                       header: "AIS_ViewController.hxx".}
proc keyUp*(this: var AIS_ViewController; theKey: AspectVKey; theTime: cdouble) {.
    importcpp: "KeyUp", header: "AIS_ViewController.hxx".}
proc keyFromAxis*(this: var AIS_ViewController; theNegative: AspectVKey;
                 thePositive: AspectVKey; theTime: cdouble; thePressure: cdouble) {.
    importcpp: "KeyFromAxis", header: "AIS_ViewController.hxx".}
proc fetchNavigationKeys*(this: var AIS_ViewController; theCrouchRatio: float;
                         theRunRatio: float): AIS_WalkDelta {.
    importcpp: "FetchNavigationKeys", header: "AIS_ViewController.hxx".}
proc mouseGestureMap*(this: AIS_ViewController): AIS_MouseGestureMap {.noSideEffect,
    importcpp: "MouseGestureMap", header: "AIS_ViewController.hxx".}
proc changeMouseGestureMap*(this: var AIS_ViewController): var AIS_MouseGestureMap {.
    importcpp: "ChangeMouseGestureMap", header: "AIS_ViewController.hxx".}
proc mouseDoubleClickInterval*(this: AIS_ViewController): cdouble {.noSideEffect,
    importcpp: "MouseDoubleClickInterval", header: "AIS_ViewController.hxx".}
proc setMouseDoubleClickInterval*(this: var AIS_ViewController; theSeconds: cdouble) {.
    importcpp: "SetMouseDoubleClickInterval", header: "AIS_ViewController.hxx".}
proc selectInViewer*(this: var AIS_ViewController; thePnt: Graphic3dVec2i;
                    theIsXOR: bool = false) {.importcpp: "SelectInViewer",
    header: "AIS_ViewController.hxx".}
proc selectInViewer*(this: var AIS_ViewController;
                    thePnts: NCollectionSequence[Graphic3dVec2i];
                    theIsXOR: bool = false) {.importcpp: "SelectInViewer",
    header: "AIS_ViewController.hxx".}
proc updateRubberBand*(this: var AIS_ViewController; thePntFrom: Graphic3dVec2i;
                      thePntTo: Graphic3dVec2i; theIsXOR: bool = false) {.
    importcpp: "UpdateRubberBand", header: "AIS_ViewController.hxx".}
proc updatePolySelection*(this: var AIS_ViewController; thePnt: Graphic3dVec2i;
                         theToAppend: bool) {.importcpp: "UpdatePolySelection",
    header: "AIS_ViewController.hxx".}
proc updateZoom*(this: var AIS_ViewController; theDelta: AspectScrollDelta): bool {.
    importcpp: "UpdateZoom", header: "AIS_ViewController.hxx".}
proc updateZRotation*(this: var AIS_ViewController; theAngle: cdouble): bool {.
    importcpp: "UpdateZRotation", header: "AIS_ViewController.hxx".}
proc updateMouseScroll*(this: var AIS_ViewController; theDelta: AspectScrollDelta): bool {.
    importcpp: "UpdateMouseScroll", header: "AIS_ViewController.hxx".}
proc updateMouseButtons*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                        theButtons: AspectVKeyMouse;
                        theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMouseButtons", header: "AIS_ViewController.hxx".}
proc updateMousePosition*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                         theButtons: AspectVKeyMouse;
                         theModifiers: AspectVKeyFlags; theIsEmulated: bool): bool {.
    importcpp: "UpdateMousePosition", header: "AIS_ViewController.hxx".}
proc pressMouseButton*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                      theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                      theIsEmulated: bool): bool {.importcpp: "PressMouseButton",
    header: "AIS_ViewController.hxx".}
proc releaseMouseButton*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                        theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                        theIsEmulated: bool): bool {.
    importcpp: "ReleaseMouseButton", header: "AIS_ViewController.hxx".}
proc updateMouseClick*(this: var AIS_ViewController; thePoint: Graphic3dVec2i;
                      theButton: AspectVKeyMouse; theModifiers: AspectVKeyFlags;
                      theIsDoubleClick: bool): bool {.
    importcpp: "UpdateMouseClick", header: "AIS_ViewController.hxx".}
proc pressedMouseButtons*(this: AIS_ViewController): AspectVKeyMouse {.noSideEffect,
    importcpp: "PressedMouseButtons", header: "AIS_ViewController.hxx".}
proc lastMouseFlags*(this: AIS_ViewController): AspectVKeyFlags {.noSideEffect,
    importcpp: "LastMouseFlags", header: "AIS_ViewController.hxx".}
proc lastMousePosition*(this: AIS_ViewController): Graphic3dVec2i {.noSideEffect,
    importcpp: "LastMousePosition", header: "AIS_ViewController.hxx".}
proc touchToleranceScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "TouchToleranceScale", header: "AIS_ViewController.hxx".}
proc setTouchToleranceScale*(this: var AIS_ViewController; theTolerance: cfloat) {.
    importcpp: "SetTouchToleranceScale", header: "AIS_ViewController.hxx".}
proc hasTouchPoints*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "HasTouchPoints", header: "AIS_ViewController.hxx".}
proc addTouchPoint*(this: var AIS_ViewController; theId: StandardSize;
                   thePnt: Graphic3dVec2d; theClearBefore: bool = false) {.
    importcpp: "AddTouchPoint", header: "AIS_ViewController.hxx".}
proc removeTouchPoint*(this: var AIS_ViewController; theId: StandardSize;
                      theClearSelectPnts: bool = false): bool {.
    importcpp: "RemoveTouchPoint", header: "AIS_ViewController.hxx".}
proc updateTouchPoint*(this: var AIS_ViewController; theId: StandardSize;
                      thePnt: Graphic3dVec2d) {.importcpp: "UpdateTouchPoint",
    header: "AIS_ViewController.hxx".}
proc get3dMouseTranslationScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "Get3dMouseTranslationScale", header: "AIS_ViewController.hxx".}
proc set3dMouseTranslationScale*(this: var AIS_ViewController; theScale: cfloat) {.
    importcpp: "Set3dMouseTranslationScale", header: "AIS_ViewController.hxx".}
proc get3dMouseRotationScale*(this: AIS_ViewController): cfloat {.noSideEffect,
    importcpp: "Get3dMouseRotationScale", header: "AIS_ViewController.hxx".}
proc set3dMouseRotationScale*(this: var AIS_ViewController; theScale: cfloat) {.
    importcpp: "Set3dMouseRotationScale", header: "AIS_ViewController.hxx".}
proc to3dMousePreciseInput*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "To3dMousePreciseInput", header: "AIS_ViewController.hxx".}
proc set3dMousePreciseInput*(this: var AIS_ViewController; theIsQuadric: bool) {.
    importcpp: "Set3dMousePreciseInput", header: "AIS_ViewController.hxx".}
proc get3dMouseIsNoRotate*(this: AIS_ViewController): NCollectionVec3[bool] {.
    noSideEffect, importcpp: "Get3dMouseIsNoRotate",
    header: "AIS_ViewController.hxx".}
proc change3dMouseIsNoRotate*(this: var AIS_ViewController): var NCollectionVec3[bool] {.
    importcpp: "Change3dMouseIsNoRotate", header: "AIS_ViewController.hxx".}
proc get3dMouseToReverse*(this: AIS_ViewController): NCollectionVec3[bool] {.
    noSideEffect, importcpp: "Get3dMouseToReverse",
    header: "AIS_ViewController.hxx".}
proc change3dMouseToReverse*(this: var AIS_ViewController): var NCollectionVec3[bool] {.
    importcpp: "Change3dMouseToReverse", header: "AIS_ViewController.hxx".}
proc update3dMouse*(this: var AIS_ViewController; theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "Update3dMouse", header: "AIS_ViewController.hxx".}
proc update3dMouseTranslation*(this: var AIS_ViewController;
                              theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseTranslation", header: "AIS_ViewController.hxx".}
proc update3dMouseRotation*(this: var AIS_ViewController;
                           theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseRotation", header: "AIS_ViewController.hxx".}
proc update3dMouseKeys*(this: var AIS_ViewController; theEvent: WNT_HIDSpaceMouse): bool {.
    importcpp: "update3dMouseKeys", header: "AIS_ViewController.hxx".}
proc eventTime*(this: AIS_ViewController): cdouble {.noSideEffect,
    importcpp: "EventTime", header: "AIS_ViewController.hxx".}
proc resetViewInput*(this: var AIS_ViewController) {.importcpp: "ResetViewInput",
    header: "AIS_ViewController.hxx".}
proc updateViewOrientation*(this: var AIS_ViewController;
                           theOrientation: V3dTypeOfOrientation; theToFitAll: bool) {.
    importcpp: "UpdateViewOrientation", header: "AIS_ViewController.hxx".}
proc flushViewEvents*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]; theToHandle: bool = false) {.
    importcpp: "FlushViewEvents", header: "AIS_ViewController.hxx".}
proc handleViewEvents*(this: var AIS_ViewController;
                      theCtx: Handle[AIS_InteractiveContext];
                      theView: Handle[V3dView]) {.importcpp: "HandleViewEvents",
    header: "AIS_ViewController.hxx".}
proc onSelectionChanged*(this: var AIS_ViewController;
                        theCtx: Handle[AIS_InteractiveContext];
                        theView: Handle[V3dView]) {.
    importcpp: "OnSelectionChanged", header: "AIS_ViewController.hxx".}
proc onObjectDragged*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]; theAction: AIS_DragAction) {.
    importcpp: "OnObjectDragged", header: "AIS_ViewController.hxx".}
proc pickPoint*(this: var AIS_ViewController; thePnt: var Pnt;
               theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView];
               theCursor: Graphic3dVec2i; theToStickToPickRay: bool): bool {.
    importcpp: "PickPoint", header: "AIS_ViewController.hxx".}
proc gravityPoint*(this: var AIS_ViewController;
                  theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView]): Pnt {.
    importcpp: "GravityPoint", header: "AIS_ViewController.hxx".}
proc fitAllAuto*(this: var AIS_ViewController;
                theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView]) {.
    importcpp: "FitAllAuto", header: "AIS_ViewController.hxx".}
proc handleViewOrientationKeys*(this: var AIS_ViewController;
                               theCtx: Handle[AIS_InteractiveContext];
                               theView: Handle[V3dView]) {.
    importcpp: "handleViewOrientationKeys", header: "AIS_ViewController.hxx".}
proc handleNavigationKeys*(this: var AIS_ViewController;
                          theCtx: Handle[AIS_InteractiveContext];
                          theView: Handle[V3dView]): AIS_WalkDelta {.
    importcpp: "handleNavigationKeys", header: "AIS_ViewController.hxx".}
proc handleCameraActions*(this: var AIS_ViewController;
                         theCtx: Handle[AIS_InteractiveContext];
                         theView: Handle[V3dView]; theWalk: AIS_WalkDelta) {.
    importcpp: "handleCameraActions", header: "AIS_ViewController.hxx".}
proc handleMoveTo*(this: var AIS_ViewController;
                  theCtx: Handle[AIS_InteractiveContext]; theView: Handle[V3dView]) {.
    importcpp: "handleMoveTo", header: "AIS_ViewController.hxx".}
proc toAskNextFrame*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "toAskNextFrame", header: "AIS_ViewController.hxx".}
proc setAskNextFrame*(this: var AIS_ViewController; theToDraw: bool = true) {.
    importcpp: "setAskNextFrame", header: "AIS_ViewController.hxx".}
proc hasPanningAnchorPoint*(this: AIS_ViewController): bool {.noSideEffect,
    importcpp: "hasPanningAnchorPoint", header: "AIS_ViewController.hxx".}
proc panningAnchorPoint*(this: AIS_ViewController): Pnt {.noSideEffect,
    importcpp: "panningAnchorPoint", header: "AIS_ViewController.hxx".}
proc setPanningAnchorPoint*(this: var AIS_ViewController; thePnt: Pnt) {.
    importcpp: "setPanningAnchorPoint", header: "AIS_ViewController.hxx".}
proc handlePanning*(this: var AIS_ViewController; theView: Handle[V3dView]) {.
    importcpp: "handlePanning", header: "AIS_ViewController.hxx".}
proc handleZRotate*(this: var AIS_ViewController; theView: Handle[V3dView]) {.
    importcpp: "handleZRotate", header: "AIS_ViewController.hxx".}
proc minZoomDistance*(this: AIS_ViewController): cdouble {.noSideEffect,
    importcpp: "MinZoomDistance", header: "AIS_ViewController.hxx".}
proc setMinZoomDistance*(this: var AIS_ViewController; theDist: cdouble) {.
    importcpp: "SetMinZoomDistance", header: "AIS_ViewController.hxx".}
proc handleZoom*(this: var AIS_ViewController; theView: Handle[V3dView];
                theParams: AspectScrollDelta; thePnt: ptr Pnt) {.
    importcpp: "handleZoom", header: "AIS_ViewController.hxx".}
proc handleZFocusScroll*(this: var AIS_ViewController; theView: Handle[V3dView];
                        theParams: AspectScrollDelta) {.
    importcpp: "handleZFocusScroll", header: "AIS_ViewController.hxx".}
proc handleOrbitRotation*(this: var AIS_ViewController; theView: Handle[V3dView];
                         thePnt: Pnt; theToLockZUp: bool) {.
    importcpp: "handleOrbitRotation", header: "AIS_ViewController.hxx".}
proc handleViewRotation*(this: var AIS_ViewController; theView: Handle[V3dView];
                        theYawExtra: cdouble; thePitchExtra: cdouble;
                        theRoll: cdouble; theToRestartOnIncrement: bool) {.
    importcpp: "handleViewRotation", header: "AIS_ViewController.hxx".}
proc handleViewRedraw*(this: var AIS_ViewController;
                      theCtx: Handle[AIS_InteractiveContext];
                      theView: Handle[V3dView]) {.importcpp: "handleViewRedraw",
    header: "AIS_ViewController.hxx".}
proc handleXRInput*(this: var AIS_ViewController;
                   theCtx: Handle[AIS_InteractiveContext];
                   theView: Handle[V3dView]; theWalk: AIS_WalkDelta) {.
    importcpp: "handleXRInput", header: "AIS_ViewController.hxx".}
proc handleXRTurnPad*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]) {.importcpp: "handleXRTurnPad",
    header: "AIS_ViewController.hxx".}
proc handleXRTeleport*(this: var AIS_ViewController;
                      theCtx: Handle[AIS_InteractiveContext];
                      theView: Handle[V3dView]) {.importcpp: "handleXRTeleport",
    header: "AIS_ViewController.hxx".}
proc handleXRPicking*(this: var AIS_ViewController;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView]) {.importcpp: "handleXRPicking",
    header: "AIS_ViewController.hxx".}
proc handleXRHighlight*(this: var AIS_ViewController;
                       theCtx: Handle[AIS_InteractiveContext];
                       theView: Handle[V3dView]) {.importcpp: "handleXRHighlight",
    header: "AIS_ViewController.hxx".}
proc handleXRPresentations*(this: var AIS_ViewController;
                           theCtx: Handle[AIS_InteractiveContext];
                           theView: Handle[V3dView]) {.
    importcpp: "handleXRPresentations", header: "AIS_ViewController.hxx".}
proc handleXRMoveTo*(this: var AIS_ViewController;
                    theCtx: Handle[AIS_InteractiveContext];
                    theView: Handle[V3dView]; thePose: Trsf; theToHighlight: bool): int {.
    importcpp: "handleXRMoveTo", header: "AIS_ViewController.hxx".}
