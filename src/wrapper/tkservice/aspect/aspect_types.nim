# PROVIDES: AspectBackground AspectFrustumLRBT AspectGenId AspectInteriorStyle AspectPolygonOffsetMode AspectScrollDelta AspectTouch AspectTrackedDevicePose AspectTypeOfTriedronPosition AspectVKey AspectVKeyBasic AspectVKeyFlags AspectVKeyMouse AspectXRAnalogActionData AspectXRDigitalActionData AspectXRGenericAction AspectXRHapticActionData AspectXRPoseActionData AspectXRSessionInfoString AspectXRTrackedDeviceRole AspectXRSessionTrackingUniverseOrigin
# DEPENDS:  Handle[AspectWindow] AspectBackground AspectGrid StandardTransient StandardTransient AspectWindow AspectXRSession AspectGrid StandardTransient StandardTransient StandardTransient StandardTransient StandardTransient

import tkservice/aspect/aspect_types
import tkernel/standard/standard_types
type
  AspectBackground* {.importcpp: "Aspect_Background",
                     header: "Aspect_Background.hxx", bycopy.} = object of RootObj 
                                                                   
                                                                   

  AspectFrustumLRBT*[ElemT] {.importcpp: "Aspect_FrustumLRBT<\'0>",
                             header: "Aspect_FrustumLRBT.hxx", bycopy.} = object
    left* {.importc: "Left".}: ElemT
    right* {.importc: "Right".}: ElemT
    bottom* {.importc: "Bottom".}: ElemT
    top* {.importc: "Top".}: ElemT 

  AspectGenId* {.importcpp: "Aspect_GenId", header: "Aspect_GenId.hxx", bycopy.} = object 
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  

  AspectInteriorStyle* {.size: sizeof(cint), importcpp: "Aspect_InteriorStyle",
                        header: "Aspect_InteriorStyle.hxx".} = enum
    aspectIS_EMPTY = -1,        
    aspectIS_SOLID = 0,         
    aspectIS_HATCH,           
    aspectIS_HIDDENLINE,      
    aspectIS_POINT           
                   

  AspectPolygonOffsetMode* {.size: sizeof(cint),
                            importcpp: "Aspect_PolygonOffsetMode",
                            header: "Aspect_PolygonOffsetMode.hxx".} = enum
    aspectPOM_Off = 0x00,       
    aspectPOM_Fill = 0x01,      
    aspectPOM_Line = 0x02,      
    aspectPOM_Point = 0x04,     

  AspectScrollDelta* {.importcpp: "Aspect_ScrollDelta",
                      header: "Aspect_ScrollDelta.hxx", bycopy.} = object
    point* {.importc: "Point".}: NCollectionVec2[cint] 
    delta* {.importc: "Delta".}: cfloat 
    flags* {.importc: "Flags".}: AspectVKeyFlags 
                                             

  AspectTouch* {.importcpp: "Aspect_Touch", header: "Aspect_Touch.hxx", bycopy.} = object
    `from`* {.importc: "From".}: NCollectionVec2[cfloat] 
    to* {.importc: "To".}: NCollectionVec2[cfloat] 
    isPreciseDevice* {.importc: "IsPreciseDevice".}: bool 
                                                      

  AspectTrackedDevicePose* {.importcpp: "Aspect_TrackedDevicePose",
                            header: "Aspect_TrackedDevicePose.hxx", bycopy.} = object
    orientation* {.importc: "Orientation".}: TrsfObj 
    velocity* {.importc: "Velocity".}: VecObj 
    angularVelocity* {.importc: "AngularVelocity".}: VecObj 
    isValidPose* {.importc: "IsValidPose".}: bool 
    isConnectedDevice* {.importc: "IsConnectedDevice".}: bool 
                                                          

  AspectTypeOfTriedronPosition* {.size: sizeof(cint),
                                 importcpp: "Aspect_TypeOfTriedronPosition",
                                 header: "Aspect_TypeOfTriedronPosition.hxx".} = enum
    aspectTOTP_CENTER = 0x0000, 
    aspectTOTP_TOP = 0x0001,    
    aspectTOTP_BOTTOM = 0x0002, 
    aspectTOTP_LEFT = 0x0004,   
    aspectTOTP_RIGHT = 0x0008  

  AspectVKey* = cuint

  AspectVKeyBasic* {.size: sizeof(cint), importcpp: "Aspect_VKeyBasic",
                    header: "Aspect_VKey.hxx".} = enum
    aspectVKeyUNKNOWN = 0,      
    aspectVKeyA = 1, aspectVKeyB, aspectVKeyC, aspectVKeyD, aspectVKeyE, aspectVKeyF,
    aspectVKeyG, aspectVKeyH, aspectVKeyI, aspectVKeyJ, aspectVKeyK, aspectVKeyL,
    aspectVKeyM, aspectVKeyN, aspectVKeyO, aspectVKeyP, aspectVKeyQ, aspectVKeyR,
    aspectVKeyS, aspectVKeyT, aspectVKeyU, aspectVKeyV, aspectVKeyW, aspectVKeyX,
    aspectVKeyY, aspectVKeyZ, aspectVKey0, aspectVKey1, aspectVKey2, aspectVKey3,
    aspectVKey4, aspectVKey5, aspectVKey6, aspectVKey7, aspectVKey8, aspectVKey9,
    aspectVKeyF1, aspectVKeyF2, aspectVKeyF3, aspectVKeyF4, aspectVKeyF5,
    aspectVKeyF6, aspectVKeyF7, aspectVKeyF8, aspectVKeyF9, aspectVKeyF10,
    aspectVKeyF11, aspectVKeyF12, 
    aspectVKeyUp, aspectVKeyDown, aspectVKeyLeft, aspectVKeyRight, aspectVKeyPlus, 
    aspectVKeyMinus,          
    aspectVKeyEqual,          
    aspectVKeyPageUp, aspectVKeyPageDown, aspectVKeyHome, aspectVKeyEnd,
    aspectVKeyEscape, aspectVKeyBack, aspectVKeyEnter, aspectVKeyBackspace,
    aspectVKeySpace, aspectVKeyDelete, aspectVKeyTilde, aspectVKeyTab, aspectVKeyComma, 
    aspectVKeyPeriod,         
    aspectVKeySemicolon,      
    aspectVKeySlash,          
    aspectVKeyBracketLeft,    
    aspectVKeyBackslash,      
    aspectVKeyBracketRight,   
    aspectVKeyApostrophe,     
    aspectVKeyNumlock,        
    aspectVKeyScroll,         
                     
    aspectVKeyNumpad0, aspectVKeyNumpad1, aspectVKeyNumpad2, aspectVKeyNumpad3,
    aspectVKeyNumpad4, aspectVKeyNumpad5, aspectVKeyNumpad6, aspectVKeyNumpad7,
    aspectVKeyNumpad8, aspectVKeyNumpad9, aspectVKeyNumpadMultiply, 
    aspectVKeyNumpadAdd,      
    aspectVKeyNumpadSubtract, 
    aspectVKeyNumpadDivide,   
                           
    aspectVKeyMediaNextTrack, aspectVKeyMediaPreviousTrack, aspectVKeyMediaStop,
    aspectVKeyMediaPlayPause, aspectVKeyVolumeMute, aspectVKeyVolumeDown,
    aspectVKeyVolumeUp, aspectVKeyBrowserBack, aspectVKeyBrowserForward,
    aspectVKeyBrowserRefresh, aspectVKeyBrowserStop, aspectVKeyBrowserSearch,
    aspectVKeyBrowserFavorites, aspectVKeyBrowserHome, 
    aspectVKeyViewTop, aspectVKeyViewBottom, aspectVKeyViewLeft,
    aspectVKeyViewRight, aspectVKeyViewFront, aspectVKeyViewBack,
    aspectVKeyViewAxoLeftProj, aspectVKeyViewAxoRightProj, aspectVKeyViewFitAll,
    aspectVKeyViewRoll90CW, aspectVKeyViewRoll90CCW, aspectVKeyViewSwitchRotate, 
    aspectVKeyShift, aspectVKeyControl, aspectVKeyAlt, aspectVKeyMenu, aspectVKeyMeta, 
    aspectVKeyNavInteract,    
    aspectVKeyNavForward,     
    aspectVKeyNavBackward,    
    aspectVKeyNavSlideLeft,   
    aspectVKeyNavSlideRight,  
    aspectVKeyNavSlideUp,     
    aspectVKeyNavSlideDown,   
    aspectVKeyNavRollCCW,     
    aspectVKeyNavRollCW,      
    aspectVKeyNavLookLeft,    
    aspectVKeyNavLookRight,   
    aspectVKeyNavLookUp,      
    aspectVKeyNavLookDown,    
    aspectVKeyNavCrouch,      
    aspectVKeyNavJump,        
    aspectVKeyNavThrustForward, 
    aspectVKeyNavThrustBackward, 
    aspectVKeyNavThrustStop,  
    aspectVKeyNavSpeedIncrease, 
    aspectVKeyNavSpeedDecrease 

  AspectVKeyFlags* = cuint

  AspectVKeyMouse* = cuint

  AspectXRAnalogActionData* {.importcpp: "Aspect_XRAnalogActionData",
                             header: "Aspect_XRAnalogActionData.hxx", bycopy.} = object
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 
    updateTime* {.importc: "UpdateTime".}: cfloat 
    vecXYZ* {.importc: "VecXYZ".}: NCollectionVec3[cfloat] 
    deltaXYZ* {.importc: "DeltaXYZ".}: NCollectionVec3[cfloat] 
    isActive* {.importc: "IsActive".}: bool 
                                        

  AspectXRDigitalActionData* {.importcpp: "Aspect_XRDigitalActionData",
                              header: "Aspect_XRDigitalActionData.hxx", bycopy.} = object
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 
    updateTime* {.importc: "UpdateTime".}: cfloat 
    isActive* {.importc: "IsActive".}: bool 
    isPressed* {.importc: "IsPressed".}: bool 
    isChanged* {.importc: "IsChanged".}: bool 
                                          

  AspectXRGenericAction* {.size: sizeof(cint), importcpp: "Aspect_XRGenericAction",
                          header: "Aspect_XRGenericAction.hxx".} = enum
    aspectXRGenericActionIsHeadsetOn, 
    aspectXRGenericActionInputAppMenu, 
    aspectXRGenericActionInputSysMenu, 
    aspectXRGenericActionInputTriggerPull, 
    aspectXRGenericActionInputTriggerClick, 
    aspectXRGenericActionInputGripClick, 
    aspectXRGenericActionInputTrackPadPosition, 
    aspectXRGenericActionInputTrackPadTouch, 
    aspectXRGenericActionInputTrackPadClick, 
    aspectXRGenericActionInputThumbstickPosition, 
    aspectXRGenericActionInputThumbstickTouch, 
    aspectXRGenericActionInputThumbstickClick, 
    aspectXRGenericActionInputPoseBase, 
    aspectXRGenericActionInputPoseFront, 
    aspectXRGenericActionInputPoseHandGrip, 
    aspectXRGenericActionInputPoseFingerTip, 
    aspectXRGenericActionOutputHaptic 

  AspectXRHapticActionData* {.importcpp: "Aspect_XRHapticActionData",
                             header: "Aspect_XRHapticActionData.hxx", bycopy.} = object
    delay* {.importc: "Delay".}: cfloat 
    duration* {.importc: "Duration".}: cfloat 
    frequency* {.importc: "Frequency".}: cfloat 
    amplitude* {.importc: "Amplitude".}: cfloat 
                                            

  AspectXRPoseActionData* {.importcpp: "Aspect_XRPoseActionData",
                           header: "Aspect_XRPoseActionData.hxx", bycopy.} = object
    pose* {.importc: "Pose".}: AspectTrackedDevicePose 
    activeOrigin* {.importc: "ActiveOrigin".}: uint64 
    isActive* {.importc: "IsActive".}: bool 
                                        

  AspectXRSessionInfoString* {.size: sizeof(cint),
                              importcpp: "Aspect_XRSession::InfoString",
                              header: "Aspect_XRSession.hxx".} = enum
    InfoStringVendor, InfoStringDevice, InfoStringTracker, InfoStringSerialNumber
    InfoStringVendor, InfoStringDevice, InfoStringTracker, InfoStringSerialNumber

  AspectXRTrackedDeviceRole* {.size: sizeof(cint),
                              importcpp: "Aspect_XRTrackedDeviceRole",
                              header: "Aspect_XRTrackedDeviceRole.hxx".} = enum
    aspectXRTrackedDeviceRoleHead, 
    aspectXRTrackedDeviceRoleLeftHand, 
    aspectXRTrackedDeviceRoleRightHand, 
    aspectXRTrackedDeviceRoleOther 
    

  AspectXRSessionTrackingUniverseOrigin* {.size: sizeof(cint),
      importcpp: "Aspect_XRSession::TrackingUniverseOrigin",
      header: "Aspect_XRSession.hxx".} = enum
    TrackingUniverseOriginSeated, 
    TrackingUniverseOriginStanding 

  HandleAspectWindow* = Handle[AspectWindow]




  AspectGradientBackground* {.importcpp: "Aspect_GradientBackground",
                             header: "Aspect_GradientBackground.hxx", bycopy.} = object of AspectBackground 
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     



  AspectCircularGrid* {.importcpp: "Aspect_CircularGrid",
                       header: "Aspect_CircularGrid.hxx", bycopy.} = object of AspectGrid 
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   



  AspectDisplayConnection* {.importcpp: "Aspect_DisplayConnection",
                            header: "Aspect_DisplayConnection.hxx", bycopy.} = object of StandardTransient 
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
    



  AspectGrid* {.importcpp: "Aspect_Grid", header: "Aspect_Grid.hxx", bycopy.} = object of StandardTransient 
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  
                                                                                                  



  AspectNeutralWindow* {.importcpp: "Aspect_NeutralWindow",
                        header: "Aspect_NeutralWindow.hxx", bycopy.} = object of AspectWindow 
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       



  AspectOpenVRSession* {.importcpp: "Aspect_OpenVRSession",
                        header: "Aspect_OpenVRSession.hxx", bycopy.} = object of AspectXRSession 
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          



  AspectRectangularGrid* {.importcpp: "Aspect_RectangularGrid",
                          header: "Aspect_RectangularGrid.hxx", bycopy.} = object of AspectGrid 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         



  AspectVKeySet* {.importcpp: "Aspect_VKeySet", header: "Aspect_VKeySet.hxx", bycopy.} = object of StandardTransient 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
    
    
    



  AspectWindow* {.importcpp: "Aspect_Window", header: "Aspect_Window.hxx", bycopy.} = object of StandardTransient 
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        



  AspectXRAction* {.importcpp: "Aspect_XRAction", header: "Aspect_XRAction.hxx",
                   bycopy.} = object of StandardTransient 
    
    
    



  AspectXRActionSet* {.importcpp: "Aspect_XRActionSet",
                      header: "Aspect_XRActionSet.hxx", bycopy.} = object of StandardTransient 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
    
    
    




  AspectXRSession* {.importcpp: "Aspect_XRSession", header: "Aspect_XRSession.hxx",
                    bycopy.} = object of StandardTransient 
                                                      
                                                      
                                                      
    
    
    
    
    
    
    
    
    
    
    
    
    



