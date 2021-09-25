##  Created on: 1996-01-26
##  Created by: PLOTNIKOV Eugeny
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

when defined(win32) and not defined(occt_Uwp):
  ## ! This class defines a Windows NT window class.
  ## ! A window in Windows NT is always created based on a
  ## ! window class. The window class identifies the window
  ## ! procedure that processes messages to the window. Each
  ## ! window class has unique name ( character string ). More
  ## ! than one window can be created based on a single window
  ## ! class. For example, all button windows in Windows NT
  ## ! are created based on the same window class. The window
  ## ! class defines the window procedure and some other
  ## ! characteristics ( background, mouse cursor shape etc. )
  ## ! of the windows that are created based on that class.
  ## ! When we create a window, we define additional
  ## ! characteristics of the window that are unique to that
  ## ! window. So, we have to create and register window
  ## ! class before creation of any window. Of course, it's possible
  ## ! to create a new window class for each window inside
  ## ! the Window class and do not use the WClass at all.
  ## ! We implemented this class for sake of flexibility of
  ## ! event processing.
  type
    WNT_WClass* {.importcpp: "WNT_WClass", header: "WNT_WClass.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## Windows
                                                                                                  ## NT
                                                                                                  ## window
                                                                                                  ## class
                                                                                                  ## and
                                                                                                  ## registers
                                                                                                  ## it.

  type
    WNT_WClassbaseType* = StandardTransient
  proc getTypeName*(): cstring {.importcpp: "WNT_WClass::get_type_name(@)",
                              header: "WNT_WClass.hxx".}
  proc getTypeDescriptor*(): Handle[StandardType] {.
      importcpp: "WNT_WClass::get_type_descriptor(@)", header: "WNT_WClass.hxx".}
  proc dynamicType*(this: WNT_WClass): Handle[StandardType] {.noSideEffect,
      importcpp: "DynamicType", header: "WNT_WClass.hxx".}
  proc constructWNT_WClass*(theClassName: TCollectionAsciiString;
                           theWndProc: StandardAddress; theStyle: cuint;
                           theClassExtra: int = 0; theWindowExtra: int = 0;
                           theCursor: AspectHandle = nil;
                           theIcon: AspectHandle = nil; theMenuName: TCollectionAsciiString = tCollectionAsciiString()): WNT_WClass {.
      constructor, importcpp: "WNT_WClass(@)", header: "WNT_WClass.hxx".}
  proc destroyWNT_WClass*(this: var WNT_WClass) {.importcpp: "#.~WNT_WClass()",
      header: "WNT_WClass.hxx".}
  proc wndProc*(this: WNT_WClass): StandardAddress {.noSideEffect,
      importcpp: "WndProc", header: "WNT_WClass.hxx".}
  proc name*(this: WNT_WClass): TCollectionAsciiString {.noSideEffect,
      importcpp: "Name", header: "WNT_WClass.hxx".}
  proc instance*(this: WNT_WClass): AspectHandle {.noSideEffect,
      importcpp: "Instance", header: "WNT_WClass.hxx".}
  discard "forward decl of WNT_WClass"
  type
    HandleWNT_WClass* = Handle[WNT_WClass]
