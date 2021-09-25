##  Created on: 1992-09-28
##  Created by: Ramin BARRETO
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _Standard_ErrorHandler_HeaderFile [NewLine] # _Standard_ErrorHandler_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_PErrorHandler . hxx > [NewLine] # < Standard_JmpBuf . hxx > [NewLine] # < Standard_HandlerStatus . hxx > [NewLine] # < Standard_ThreadId . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] ! @file
## ! Support of handling of C signals as C++-style exceptions, and implementation
## ! of C++ exception handling on platforms that do not implement these natively.
## !
## ! The implementation is based on C long jumps.
## !
## ! If macro OCC_CONVERT_SIGNALS is defined, this enables macro OCC_CATCH_SIGNALS
## ! that can be used in the code (often inside try {} blocks) to convert C-style
## ! signals to standard C++ exceptions. This works only when OSD::SetSignal()
## ! is called to set appropriate signal handler. In the case of signal (like
## ! access violation, division by zero, etc.) it will jump to the nearest
## ! OCC_CATCH_SIGNALS in the call stack, which will then throw a C++ exception.
## ! This method is useful for Unix and Linux systems where C++ exceptions
## ! cannot be thrown from C signal handler.
## !
## ! On Windows with MSVC compiler, exceptions can be thrown directly from
## ! signal handler, this OCC_CONVERT_SIGNALS is not needed. Note however that
## ! this requires that compiler option /EHa is used. # defined ( OCC_CONVERT_SIGNALS ) [NewLine]  Exceptions are raied as usual, signal cause jumps in the nearest
##  OCC_CATCH_SIGNALS and then thrown as exceptions. # OCC_CATCH_SIGNALS Standard_ErrorHandler _aHandler ;
## Error: did not expect [NewLine]!!!

if setjmp(aHandler.label()):
  aHandler.catches(getTypeDescriptor())
  aHandler.error().reraise()
## !!!Ignored construct:  [NewLine]  Suppress GCC warning "variable ...  might be clobbered by 'longjmp' or 'vfork'" # defined ( __GNUC__ ) && ! defined ( __INTEL_COMPILER ) && ! defined ( __clang__ ) [NewLine] # GCC diagnostic ignored -Wclobbered [NewLine] # [NewLine] # [NewLine]  Normal Exceptions (for example WNT with MSVC and option /GHa) # OCC_CATCH_SIGNALS [NewLine] # [NewLine] class Standard_Failure ;
## Error: did not expect [NewLine]!!!

## ! Class implementing mechanics of conversion of signals to exceptions.
## !
## ! Each instance of it stores data for jump placement, thread id,
## ! and callbacks to be called during jump (for proper resource release).
## !
## ! The active handlers are stored in the global stack, which is used
## ! to find appropriate handler when signal is raised.

type
  StandardErrorHandler* {.importcpp: "Standard_ErrorHandler",
                         header: "Standard_ErrorHandler.hxx", bycopy.} = object ## !
                                                                           ## Create a
                                                                           ## ErrorHandler (to be used with
                                                                           ## try{}catch(){}).
                                                                           ## ! It uses the
                                                                           ## "setjmp" and
                                                                           ## "longjmp"
                                                                           ## routines.
                                                                           ## ! A
                                                                           ## exception is
                                                                           ## raised but it is not yet
                                                                           ## caught.
                                                                           ## ! So Abort the
                                                                           ## current
                                                                           ## function and
                                                                           ## transmit the
                                                                           ## exception
                                                                           ## ! to
                                                                           ## "calling
                                                                           ## routines".
                                                                           ## !
                                                                           ## Warning: If no catch is
                                                                           ## prepared for this
                                                                           ## exception, it
                                                                           ## displays the
                                                                           ## !
                                                                           ## exception name and calls
                                                                           ## "exit(1)".
                                                                           ## !
                                                                           ## Defines a base class for
                                                                           ## callback
                                                                           ## objects that can be
                                                                           ## registered
                                                                           ## ! in the OCC error
                                                                           ## handler (the class
                                                                           ## simulating C++
                                                                           ## exceptions)
                                                                           ## ! so as to be
                                                                           ## correctly
                                                                           ## destroyed when error
                                                                           ## handler is
                                                                           ## activated.
                                                                           ## !
                                                                           ## ! Note that this is
                                                                           ## needed only when Open
                                                                           ## CASCADE is
                                                                           ## compiled with
                                                                           ## !
                                                                           ## OCC_CONVERT_SIGNALS
                                                                           ## options (i.e. on
                                                                           ## UNIX/Linux).
                                                                           ## ! In that case,
                                                                           ## raising OCC
                                                                           ## exception
                                                                           ## and/or
                                                                           ## signal will not cause
                                                                           ## ! C++ stack
                                                                           ## unwinding and
                                                                           ## destruction of
                                                                           ## objects
                                                                           ## created in the
                                                                           ## stack.
                                                                           ## !
                                                                           ## ! This class is
                                                                           ## intended to
                                                                           ## protect
                                                                           ## critical
                                                                           ## objects and
                                                                           ## operations in
                                                                           ## ! the try {} catch {} block from being
                                                                           ## bypassed by OCC
                                                                           ## signal or
                                                                           ## exception.
                                                                           ## !
                                                                           ## !
                                                                           ## Inherit your
                                                                           ## object from that
                                                                           ## class,
                                                                           ## implement
                                                                           ## DestroyCallback()
                                                                           ## function,
                                                                           ## ! and call
                                                                           ## Register/Unregister in
                                                                           ## critical
                                                                           ## points.
                                                                           ## !
                                                                           ## ! Note that you must
                                                                           ## ensure that your
                                                                           ## object has life span
                                                                           ## longer than
                                                                           ## ! that of the try {} block in which it calls
                                                                           ## Register().


proc constructStandardErrorHandler*(): StandardErrorHandler {.constructor,
    importcpp: "Standard_ErrorHandler(@)", header: "Standard_ErrorHandler.hxx".}
proc destroy*(this: var StandardErrorHandler) {.importcpp: "Destroy",
    header: "Standard_ErrorHandler.hxx".}
proc destroyStandardErrorHandler*(this: var StandardErrorHandler) {.
    importcpp: "#.~Standard_ErrorHandler()", header: "Standard_ErrorHandler.hxx".}
proc unlink*(this: var StandardErrorHandler) {.importcpp: "Unlink",
    header: "Standard_ErrorHandler.hxx".}
proc catches*(this: var StandardErrorHandler; aType: Handle[StandardType]): bool {.
    importcpp: "Catches", header: "Standard_ErrorHandler.hxx".}
proc label*(this: var StandardErrorHandler): var StandardJmpBuf {.importcpp: "Label",
    header: "Standard_ErrorHandler.hxx".}
proc error*(this: StandardErrorHandler): Handle[StandardFailure] {.noSideEffect,
    importcpp: "Error", header: "Standard_ErrorHandler.hxx".}
proc lastCaughtError*(): Handle[StandardFailure] {.
    importcpp: "Standard_ErrorHandler::LastCaughtError(@)",
    header: "Standard_ErrorHandler.hxx".}
proc isInTryBlock*(): bool {.importcpp: "Standard_ErrorHandler::IsInTryBlock(@)",
                          header: "Standard_ErrorHandler.hxx".}
type
  StandardErrorHandlerCallback* {.importcpp: "Standard_ErrorHandler::Callback",
                                 header: "Standard_ErrorHandler.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Registers
                                                                                   ## this
                                                                                   ## callback
                                                                                   ## object
                                                                                   ## in
                                                                                   ## the
                                                                                   ## current
                                                                                   ## error
                                                                                   ## handler
                                                                                   ## (if
                                                                                   ## found).
                                                                                   ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor


proc registerCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "RegisterCallback", header: "Standard_ErrorHandler.hxx".}
proc unregisterCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "UnregisterCallback", header: "Standard_ErrorHandler.hxx".}
proc destroyStandardErrorHandlerCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "#.~Callback()", header: "Standard_ErrorHandler.hxx".}
proc destroyCallback*(this: var StandardErrorHandlerCallback) {.
    importcpp: "DestroyCallback", header: "Standard_ErrorHandler.hxx".}
##  If OCC_CONVERT_SIGNALS is not defined,
##  provide empty inline implementation

## !!!Ignored construct:  # ! defined ( OCC_CONVERT_SIGNALS ) [NewLine] inline Standard_ErrorHandler :: Callback :: Callback ( ) : myHandler ( 0 ) , myPrev ( 0 ) , myNext ( 0 ) { } inline Standard_ErrorHandler :: Callback :: ~ Callback ( ) { ( void ) myHandler ; ( void ) myPrev ; } inline void Standard_ErrorHandler :: Callback :: RegisterCallback ( ) { } inline void Standard_ErrorHandler :: Callback :: UnregisterCallback ( ) { } # [NewLine]  Definition of the old name "Standard_ErrorHandlerCallback" was kept for compatibility typedef Standard_ErrorHandler :: Callback Standard_ErrorHandlerCallback ;
## Error: identifier expected, but got: )!!!

