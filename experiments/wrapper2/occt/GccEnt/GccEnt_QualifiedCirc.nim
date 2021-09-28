##  Created on: 1991-04-15
##  Created by: Philippe DAUTRY
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of gp_Circ2d"
type
  GccEntQualifiedCirc* {.importcpp: "GccEnt_QualifiedCirc",
                        header: "GccEnt_QualifiedCirc.hxx", bycopy.} = object ## !
                                                                         ## Constructs a
                                                                         ## qualified circle by
                                                                         ## assigning the
                                                                         ## qualifier
                                                                         ## !
                                                                         ## Qualifier to the circle
                                                                         ## Qualified.
                                                                         ## Qualifier may be:
                                                                         ## ! -
                                                                         ## GccEnt_enclosing if the
                                                                         ## solution
                                                                         ## computed by a
                                                                         ## !
                                                                         ## construction
                                                                         ## algorithm using the
                                                                         ## qualified circle
                                                                         ## !
                                                                         ## encloses the circle, or
                                                                         ## ! -
                                                                         ## GccEnt_enclosed if the
                                                                         ## solution is
                                                                         ## enclosed by the circle, or
                                                                         ## ! -
                                                                         ## GccEnt_outside if both the
                                                                         ## solution and the circle
                                                                         ## ! are
                                                                         ## external to one
                                                                         ## another, or
                                                                         ## ! -
                                                                         ## GccEnt_unqualified if all
                                                                         ## solutions apply.


proc constructGccEntQualifiedCirc*(qualified: Circ2d; qualifier: GccEntPosition): GccEntQualifiedCirc {.
    constructor, importcpp: "GccEnt_QualifiedCirc(@)",
    header: "GccEnt_QualifiedCirc.hxx".}
proc qualified*(this: GccEntQualifiedCirc): Circ2d {.noSideEffect,
    importcpp: "Qualified", header: "GccEnt_QualifiedCirc.hxx".}
proc qualifier*(this: GccEntQualifiedCirc): GccEntPosition {.noSideEffect,
    importcpp: "Qualifier", header: "GccEnt_QualifiedCirc.hxx".}
proc isUnqualified*(this: GccEntQualifiedCirc): bool {.noSideEffect,
    importcpp: "IsUnqualified", header: "GccEnt_QualifiedCirc.hxx".}
proc isEnclosing*(this: GccEntQualifiedCirc): bool {.noSideEffect,
    importcpp: "IsEnclosing", header: "GccEnt_QualifiedCirc.hxx".}
proc isEnclosed*(this: GccEntQualifiedCirc): bool {.noSideEffect,
    importcpp: "IsEnclosed", header: "GccEnt_QualifiedCirc.hxx".}
proc isOutside*(this: GccEntQualifiedCirc): bool {.noSideEffect,
    importcpp: "IsOutside", header: "GccEnt_QualifiedCirc.hxx".}

























