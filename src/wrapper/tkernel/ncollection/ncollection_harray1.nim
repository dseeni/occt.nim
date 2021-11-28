##  Created on: 2002-04-29
##  Created by: Alexander KARTOMIN (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

##       Declaration of Array1 class managed by Handle

template ncollection_Harray1*(hClassName, `type`: untyped): void =
  type
    HClassName* {.importcpp: "HClassName", header: "NCollection_HArray1.hxx", bycopy.} = object of NCollectionArray1[
        Type]

  proc newHClassName*(theLower: cint; theUpper: cint): HClassName {.cdecl, constructor,
      importcpp: "HClassName(@)", dynlib: tkernel.}
  proc newHClassName*(theLower: cint; theUpper: cint; theValue: ValueType[Type]): HClassName {.
      cdecl, constructor, importcpp: "HClassName(@)", dynlib: tkernel.}
  proc newHClassName*(theOther: NCollectionArray1[Type]): HClassName {.cdecl,
      constructor, importcpp: "HClassName(@)", dynlib: tkernel.}
  proc array1*(this: HClassName): NCollectionArray1[Type] {.noSideEffect, cdecl,
      importcpp: "Array1", dynlib: tkernel.}
  