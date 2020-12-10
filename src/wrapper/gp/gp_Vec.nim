{.push header: "gp_Vec.hxx".}


# Constructors and methods
proc constructor_gp_Vec*(): gp_Vec {.constructor,importcpp: "gp_Vec".}
  ## Creates a zero vector.

proc constructor_gp_Vec*(V: gp_Dir): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a unitary vector from a direction V.

proc constructor_gp_Vec*(Coord: gp_XYZ): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a vector with a triplet of coordinates.

proc constructor_gp_Vec*(Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a point with its three cartesian coordinates.

proc constructor_gp_Vec*(P1: gp_Pnt, P2: gp_Pnt): gp_Vec {.constructor,importcpp: "gp_Vec(@)".}
  ## Creates a vector from two points. The length of the vector is the
  ## distance between P1 and P2

proc ` new`*(this: var gp_Vec, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Vec, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var gp_Vec, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var gp_Vec, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var gp_Vec, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var gp_Vec, pointer, pointer)  {.importcpp: "` delete`".}

proc SetCoord*(this: var gp_Vec, Index: Standard_Integer, Xi: Standard_Real)  {.importcpp: "SetCoord".}
  ## Changes the coordinate of range Index Index = 1 => X is modified Index
  ## = 2 => Y is modified Index = 3 => Z is modified Raised if Index != {1,
  ## 2, 3}.

proc SetCoord*(this: var gp_Vec, Xv: Standard_Real, Yv: Standard_Real, Zv: Standard_Real)  {.importcpp: "SetCoord".}
  ## For this vector, assigns - the values Xv, Yv and Zv to its three
  ## coordinates.

proc SetX*(this: var gp_Vec, X: Standard_Real)  {.importcpp: "SetX".}
  ## Assigns the given value to the X coordinate of this vector.

proc SetY*(this: var gp_Vec, Y: Standard_Real)  {.importcpp: "SetY".}
  ## Assigns the given value to the X coordinate of this vector.

proc SetZ*(this: var gp_Vec, Z: Standard_Real)  {.importcpp: "SetZ".}
  ## Assigns the given value to the X coordinate of this vector.

proc SetXYZ*(this: var gp_Vec, Coord: gp_XYZ)  {.importcpp: "SetXYZ".}
  ## Assigns the three coordinates of Coord to this vector.

proc Coord*(this: gp_Vec, Index: Standard_Integer): Standard_Real  {.importcpp: "Coord".}
  ## Returns the coordinate of range Index : Index = 1 => X is returned
  ## Index = 2 => Y is returned Index = 3 => Z is returned Raised if Index
  ## != {1, 2, 3}.

proc Coord*(this: gp_Vec, Xv: var Standard_Real, Yv: var Standard_Real, Zv: var Standard_Real)  {.importcpp: "Coord".}
  ## For this vector returns its three coordinates Xv, Yv, and Zvinline

proc X*(this: gp_Vec): Standard_Real  {.importcpp: "X".}
  ## For this vector, returns its X coordinate.

proc Y*(this: gp_Vec): Standard_Real  {.importcpp: "Y".}
  ## For this vector, returns its Y coordinate.

proc Z*(this: gp_Vec): Standard_Real  {.importcpp: "Z".}
  ## For this vector, returns its Z coordinate.

proc XYZ*(this: gp_Vec): gp_XYZ  {.importcpp: "XYZ".}
  ## For this vector, returns - its three coordinates as a number triple

proc IsEqual*(this: gp_Vec, Other: gp_Vec, LinearTolerance: Standard_Real, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Returns True if the two vectors have the same magnitude value and the
  ## same direction. The precision values are LinearTolerance for the
  ## magnitude and AngularTolerance for the direction.

proc IsNormal*(this: gp_Vec, Other: gp_Vec, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsNormal".}
  ## Returns True if abs(<me>.Angle(Other) - PI/2.) <= AngularTolerance
  ## Raises VectorWithNullMagnitude if <me>.Magnitude() <= Resolution or
  ## Other.Magnitude() <= Resolution from gp

proc IsOpposite*(this: gp_Vec, Other: gp_Vec, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsOpposite".}
  ## Returns True if PI - <me>.Angle(Other) <= AngularTolerance Raises
  ## VectorWithNullMagnitude if <me>.Magnitude() <= Resolution or
  ## Other.Magnitude() <= Resolution from gp

proc IsParallel*(this: gp_Vec, Other: gp_Vec, AngularTolerance: Standard_Real): Standard_Boolean  {.importcpp: "IsParallel".}
  ## Returns True if Angle(<me>, Other) <= AngularTolerance or PI -
  ## Angle(<me>, Other) <= AngularTolerance This definition means that two
  ## parallel vectors cannot define a plane but two vectors with opposite
  ## directions are considered as parallel. Raises VectorWithNullMagnitude
  ## if <me>.Magnitude() <= Resolution or Other.Magnitude() <= Resolution
  ## from gp

proc Angle*(this: gp_Vec, Other: gp_Vec): Standard_Real  {.importcpp: "Angle".}
  ## Computes the angular value between <me> and <Other> Returns the angle
  ## value between 0 and PI in radian. Raises VectorWithNullMagnitude if
  ## <me>.Magnitude() <= Resolution from gp or Other.Magnitude() <=
  ## Resolution because the angular value is indefinite if one of the
  ## vectors has a null magnitude.

proc AngleWithRef*(this: gp_Vec, Other: gp_Vec, VRef: gp_Vec): Standard_Real  {.importcpp: "AngleWithRef".}
  ## Computes the angle, in radians, between this vector and vector Other.
  ## The result is a value between -Pi and Pi. For this, VRef defines the
  ## positive sense of rotation: the angular value is positive, if the
  ## cross product this ^ Other has the same orientation as VRef relative
  ## to the plane defined by the vectors this and Other. Otherwise, the
  ## angular value is negative. Exceptions gp_VectorWithNullMagnitude if
  ## the magnitude of this vector, the vector Other, or the vector VRef is
  ## less than or equal to gp::Resolution(). Standard_DomainError if this
  ## vector, the vector Other, and the vector VRef are coplanar, unless
  ## this vector and the vector Other are parallel.

proc Magnitude*(this: gp_Vec): Standard_Real  {.importcpp: "Magnitude".}
  ## Computes the magnitude of this vector.

proc SquareMagnitude*(this: gp_Vec): Standard_Real  {.importcpp: "SquareMagnitude".}
  ## Computes the square magnitude of this vector.

proc Add*(this: var gp_Vec, Other: gp_Vec)  {.importcpp: "Add".}
  ## Adds two vectors

proc `+=`*(this: var gp_Vec, Other: gp_Vec)  {.importcpp: "`+=`".}

proc Added*(this: gp_Vec, Other: gp_Vec): gp_Vec  {.importcpp: "Added".}
  ## Adds two vectors

proc `+`*(this: gp_Vec, Other: gp_Vec): gp_Vec  {.importcpp: "`+`".}

proc Subtract*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "Subtract".}
  ## Subtracts two vectors

proc `-=`*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "`-=`".}

proc Subtracted*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "Subtracted".}
  ## Subtracts two vectors

proc `-`*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "`-`".}

proc Multiply*(this: var gp_Vec, Scalar: Standard_Real)  {.importcpp: "Multiply".}
  ## Multiplies a vector by a scalar

proc `*=`*(this: var gp_Vec, Scalar: Standard_Real)  {.importcpp: "`*=`".}

proc Multiplied*(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "Multiplied".}
  ## Multiplies a vector by a scalar

proc `*`*(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "`*`".}

proc Divide*(this: var gp_Vec, Scalar: Standard_Real)  {.importcpp: "Divide".}
  ## Divides a vector by a scalar

proc `/=`*(this: var gp_Vec, Scalar: Standard_Real)  {.importcpp: "`/=`".}

proc Divided*(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "Divided".}
  ## Divides a vector by a scalar

proc `/`*(this: gp_Vec, Scalar: Standard_Real): gp_Vec  {.importcpp: "`/`".}

proc Cross*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "Cross".}
  ## computes the cross product between two vectors

proc `^=`*(this: var gp_Vec, Right: gp_Vec)  {.importcpp: "`^=`".}

proc Crossed*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "Crossed".}
  ## computes the cross product between two vectors

proc `^`*(this: gp_Vec, Right: gp_Vec): gp_Vec  {.importcpp: "`^`".}

proc CrossMagnitude*(this: gp_Vec, Right: gp_Vec): Standard_Real  {.importcpp: "CrossMagnitude".}
  ## Computes the magnitude of the cross product between <me> and Right.
  ## Returns || <me> ^ Right ||

proc CrossSquareMagnitude*(this: gp_Vec, Right: gp_Vec): Standard_Real  {.importcpp: "CrossSquareMagnitude".}
  ## Computes the square magnitude of the cross product between <me> and
  ## Right. Returns || <me> ^ Right ||**2

proc CrossCross*(this: var gp_Vec, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "CrossCross".}
  ## Computes the triple vector product. <me> ^= (V1 ^ V2)

proc CrossCrossed*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec): gp_Vec  {.importcpp: "CrossCrossed".}
  ## Computes the triple vector product. <me> ^ (V1 ^ V2)

proc Dot*(this: gp_Vec, Other: gp_Vec): Standard_Real  {.importcpp: "Dot".}
  ## computes the scalar product

proc `*`*(this: gp_Vec, Other: gp_Vec): Standard_Real  {.importcpp: "`*`".}

proc DotCross*(this: gp_Vec, V1: gp_Vec, V2: gp_Vec): Standard_Real  {.importcpp: "DotCross".}
  ## Computes the triple scalar product <me> * (V1 ^ V2).

proc Normalize*(this: var gp_Vec)  {.importcpp: "Normalize".}
  ## normalizes a vector Raises an exception if the magnitude of the vector
  ## is lower or equal to Resolution from gp.

proc Normalized*(this: gp_Vec): gp_Vec  {.importcpp: "Normalized".}
  ## normalizes a vector Raises an exception if the magnitude of the vector
  ## is lower or equal to Resolution from gp.

proc Reverse*(this: var gp_Vec)  {.importcpp: "Reverse".}
  ## Reverses the direction of a vector

proc Reversed*(this: gp_Vec): gp_Vec  {.importcpp: "Reversed".}
  ## Reverses the direction of a vector

proc `-`*(this: gp_Vec): gp_Vec  {.importcpp: "`-`".}

proc SetLinearForm*(this: var gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec, A3: Standard_Real, V3: gp_Vec, V4: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2 + A3 * V3
  ## + V4

proc SetLinearForm*(this: var gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec, A3: Standard_Real, V3: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2 + A3 * V3

proc SetLinearForm*(this: var gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec, V3: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2 + V3

proc SetLinearForm*(this: var gp_Vec, A1: Standard_Real, V1: gp_Vec, A2: Standard_Real, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + A2 * V2

proc SetLinearForm*(this: var gp_Vec, A1: Standard_Real, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : A1 * V1 + V2

proc SetLinearForm*(this: var gp_Vec, V1: gp_Vec, V2: gp_Vec)  {.importcpp: "SetLinearForm".}
  ## <me> is set to the following linear form : V1 + V2

proc Mirror*(this: var gp_Vec, V: gp_Vec)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Vec, V: gp_Vec): gp_Vec  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to
  ## the vector V which is the center of the symmetry.

proc Mirror*(this: var gp_Vec, A1: gp_Ax1)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Vec, A1: gp_Ax1): gp_Vec  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to an
  ## axis placement which is the axis of the symmetry.

proc Mirror*(this: var gp_Vec, A2: gp_Ax2)  {.importcpp: "Mirror".}

proc Mirrored*(this: gp_Vec, A2: gp_Ax2): gp_Vec  {.importcpp: "Mirrored".}
  ## Performs the symmetrical transformation of a vector with respect to a
  ## plane. The axis placement A2 locates the plane of the symmetry :
  ## (Location, XDirection, YDirection).

proc Rotate*(this: var gp_Vec, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}

proc Rotated*(this: gp_Vec, A1: gp_Ax1, Ang: Standard_Real): gp_Vec  {.importcpp: "Rotated".}
  ## Rotates a vector. A1 is the axis of the rotation. Ang is the angular
  ## value of the rotation in radians.

proc Scale*(this: var gp_Vec, S: Standard_Real)  {.importcpp: "Scale".}

proc Scaled*(this: gp_Vec, S: Standard_Real): gp_Vec  {.importcpp: "Scaled".}
  ## Scales a vector. S is the scaling value.

proc Transform*(this: var gp_Vec, T: gp_Trsf)  {.importcpp: "Transform".}
  ## Transforms a vector with the transformation T.

proc Transformed*(this: gp_Vec, T: gp_Trsf): gp_Vec  {.importcpp: "Transformed".}
  ## Transforms a vector with the transformation T.

{.pop.} # header: "gp_Vec.hxx
