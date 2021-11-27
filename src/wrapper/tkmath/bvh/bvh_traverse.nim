##  Created by: Eugeny MALTCHIKOV
##  Created on: 2019-04-17
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! The classes implement the traverse of the BVH tree.
## !
## ! There are two traverse methods implemented:
## ! - Traverse of the single tree
## ! - Parallel traverse of two trees
## !
## ! To perform Selection of the elements from BVH_Tree using
## ! the traverse methods implemented here it is
## ! required to define Acceptance/Rejection rules in the
## ! following methods:
## ! - *RejectNode* - Node rejection by its bounding box.
## !   It is applied to both inner and outer nodes of the BVH tree.
## !   Optionally, the method should compute the metric for the node
## !   which will allow performing traverse faster by descending by the
## !   best branches.
## ! - *Accept* - Element acceptance. It takes the index of the element
## !   of BVH tree. The access to the element itself should be performed
## !   through the set on which BVH is built.
## !   The *Accept* method implements the leaf node operation and usually
## !   defines the logic of the whole operation.
## ! - *IsMetricBetter* - Compares the metrics of the nodes and returns
## !   true if the left metric is better than the right one.
## ! - *RejectMetric* - Node rejection by the metric. It should compare
## !   the metric of the node with the global one and return true
## !   if the global metric is better than the given one.
## ! - *Stop* - implements conditions to stop the tree descend if the necessary
## !   elements are already found.
## !
## ! The selector of a single tree has an extra method which allows
## ! accepting the whole branches without any further checks
## ! (e.g. full inclusion test):
## ! - *AcceptMetric* - basing on the metric of the node decides if the
## !   node may be accepted without any further checks.
## !
## ! Two ways of selection are possible:
## ! 1. Set the BVH set containing the tree and use the method Select()
## !    which allows using common interface for setting the BVH Set for accessing
## !    the BVH tree and elements in the Accept method.
## ! 2. Keep the BVHSetType void, do not set the BVH set and use the
## !    method Select (const BVH_Tree<>&) which allows performing selection
## !    on the arbitrary BVH tree.
## !
## ! Here is the example of usage of the traverse to find the point-triangulation
## ! minimal distance.
## ! ~~~~
## ! // Structure to contain points of the triangle
## ! struct Triangle
## ! {
## !   Triangle() {}
## !   Triangle(const BVH_Vec3d& theNode1,
## !            const BVH_Vec3d& theNode2,
## !            const BVH_Vec3d& theNode3)
## !     : Node1 (theNode1), Node2 (theNode2), Node3 (theNode3)
## !   {}
## !
## !   BVH_Vec3d Node1;
## !   BVH_Vec3d Node2;
## !   BVH_Vec3d Node3;
## ! };
## !
## ! // Selector for min point-triangulation distance
## ! class BVH_PointTriangulationSqDist :
## !   public BVH_Distance<Standard_Real, 3, BVH_Vec3d, BVH_BoxSet<Standard_Real, 3, Triangle>>
## ! {
## ! public:
## !
## !   // Computes the distance from the point to bounding box
## !   virtual Standard_Boolean RejectNode (const BVH_Vec3d& theCMin,
## !                                        const BVH_Vec3d& theCMax,
## !                                        Standard_Real& theDistance) const Standard_OVERRIDE
## !   {
## !     theDistance = BVH_Tools<Standard_Real, 3>::PointBoxSquareDistance (myObject, theCMin, theCMax);
## !     return RejectMetric (theDistance);
## !   }
## !
## !   // Computes the distance from the point to triangle
## !   virtual Standard_Boolean Accept (const Standard_Integer theIndex,
## !                                    const Standard_Real&) Standard_OVERRIDE
## !   {
## !     const Triangle& aTri = myBVHSet->Element (theIndex);
## !     Standard_Real aDist = BVH_Tools<Standard_Real, 3>::PointTriangleSquareDistance (myObject, aTri.Node1, aTri.Node2, aTri.Node3);
## !     if (aDist < myDistance)
## !     {
## !       myDistance = aDist;
## !       return Standard_True;
## !     }
## !     return Standard_False;
## !   }
## ! };
## !
## ! // Point to which the distance is required
## ! BVH_Vec3d aPoint = ...;
## ! // BVH Set containing triangulation
## ! opencascade::handle<BVH_BoxSet<Standard_Real, 3, Triangle>> aTriangulationSet = ...;
## !
## ! BVH_PointTriangulationSqDist aDistTool;
## ! aDistTool.SetObject (aPoint);
## ! aDistTool.SetBVHSet (aTriangulationSet.get());
## ! aDistTool.ComputeDistance();
## ! if (aDistTool.IsDone())
## ! {
## !   Standard_Real aPointTriSqDist = aDistTool.Distance();
## ! }
## !
## ! ~~~~
## !
## ! Abstract class implementing the base Traverse interface
## ! required for selection of the elements from BVH tree.
## !
## ! \tparam MetricType Type of metric to perform more optimal tree descend

type
  BVH_BaseTraverse*[MetricType] {.importcpp: "BVH_BaseTraverse<\'0>",
                                 header: "BVH_Traverse.hxx", bycopy.} = object of RootObj  ## ! @name
                                                                          ## Metrics
                                                                          ## comparison for
                                                                          ## choosing the best branch
                                                                          ## !
                                                                          ## Compares the two
                                                                          ## metrics and
                                                                          ## chooses the best one.
                                                                          ## !
                                                                          ## Returns true if the first metric is better than the
                                                                          ## second,
                                                                          ## ! false
                                                                          ## otherwise.
                                                                          ## ! @name
                                                                          ## Rejection of the node by metric
                                                                          ## !
                                                                          ## Rejects the node by the metric
                                                                          ## ! @name
                                                                          ## Condition to stop the
                                                                          ## descend
                                                                          ## !
                                                                          ## Returns the flag
                                                                          ## controlling the tree
                                                                          ## descend.
                                                                          ## !
                                                                          ## Returns true if the tree
                                                                          ## descend should be
                                                                          ## stopped.
                                                                          ## ! @name
                                                                          ## Constructors
                                                                          ## !
                                                                          ## Constructor


proc isMetricBetter*[MetricType](this: BVH_BaseTraverse[MetricType];
                                a2: MetricType; a3: MetricType): bool {.noSideEffect,
    cdecl, importcpp: "IsMetricBetter", dynlib: tkmath.}
proc rejectMetric*[MetricType](this: BVH_BaseTraverse[MetricType]; a2: MetricType): bool {.
    noSideEffect, cdecl, importcpp: "RejectMetric", dynlib: tkmath.}
proc stop*[MetricType](this: BVH_BaseTraverse[MetricType]): bool {.noSideEffect,
    cdecl, importcpp: "Stop", dynlib: tkmath.}
## ! Abstract class implementing the traverse of the single binary tree.
## ! Selection of the data from the tree is performed by the
## ! rules defined in the Accept/Reject methods.
## ! See description of the required methods in the comments above.
## !
## ! \tparam NumType Numeric data type
## ! \tparam Dimension Vector dimension
## ! \tparam BVHSetType Type of set containing the BVH tree (required to access the elements by the index)
## ! \tparam MetricType Type of metric to perform more optimal tree descend

type
  BVH_Traverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType] {.
      importcpp: "BVH_Traverse<\'0,\'1,\'2,\'3>", header: "BVH_Traverse.hxx", bycopy.} = object of BVH_BaseTraverse[
      MetricType] ## ! @name public types
                 ## ! @name Constructor
                 ## ! Constructor
                 ## ! @name Setting the set to access the elements and BVH tree
                 ## ! Sets the BVH Set containing the BVH tree
                 ## ! @name Rules for Accept/Reject
                 ## ! Basing on the given metric, checks if the whole branch may be
                 ## ! accepted without any further checks.
                 ## ! Returns true if the metric is accepted, false otherwise.
                 ## ! @name Selection
                 ## ! Selection of the elements from the BVH tree by the
                 ## ! rules defined in Accept/Reject methods.
                 ## ! The method requires the BVHSet containing BVH tree to be set.
                 ## ! Returns the number of accepted elements.
                 ## ! @name Fields

#  BVH_TraverseBVH_VecNt*[NumType; Dimension] = BVH_VecNt[NumType, Dimension]

proc newBVH_Traverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType](): BVH_Traverse[
    NumType, Dimension, BVHSetType, MetricType] {.cdecl, constructor,
    importcpp: "BVH_Traverse<\'*0,\'*1,\'*2,\'*3>(@)", dynlib: tkmath.}
proc setBVHSet*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_Traverse[NumType, Dimension, BVHSetType, MetricType];
    theBVHSet: ptr BVHSetType) {.cdecl, importcpp: "SetBVHSet", dynlib: tkmath.}
proc acceptMetric*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: BVH_Traverse[NumType, Dimension, BVHSetType, MetricType]; a2: MetricType): bool {.
    noSideEffect, cdecl, importcpp: "AcceptMetric", dynlib: tkmath.}
proc rejectNode*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: BVH_Traverse[NumType, Dimension, BVHSetType, MetricType];
    theCornerMin: BVH_TraverseBVH_VecNt; theCornerMax: BVH_TraverseBVH_VecNt;
    theMetric: var MetricType): bool {.noSideEffect, cdecl, importcpp: "RejectNode",
                                   dynlib: tkmath.}
proc accept*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_Traverse[NumType, Dimension, BVHSetType, MetricType];
    theIndex: cint; theMetric: MetricType): bool {.cdecl, importcpp: "Accept",
    dynlib: tkmath.}
proc select*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_Traverse[NumType, Dimension, BVHSetType, MetricType]): cint {.cdecl,
    importcpp: "Select", dynlib: tkmath.}
proc select*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_Traverse[NumType, Dimension, BVHSetType, MetricType];
    theBVH: Handle[BVH_Tree[NumType, Dimension]]): cint {.cdecl, importcpp: "Select",
    dynlib: tkmath.}
## ! Abstract class implementing the parallel traverse of two binary trees.
## ! Selection of the data from the trees is performed by the
## ! rules defined in the Accept/Reject methods.
## ! See description of the required methods in the comments above.
## !
## ! \tparam NumType Numeric data type
## ! \tparam Dimension Vector dimension
## ! \tparam BVHSetType Type of set containing the BVH tree (required to access the elements by the index)
## ! \tparam MetricType Type of metric to perform more optimal tree descend

type
  BVH_PairTraverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType] {.
      importcpp: "BVH_PairTraverse<\'0,\'1,\'2,\'3>", header: "BVH_Traverse.hxx",
      bycopy.} = object of BVH_BaseTraverse[MetricType] ## ! @name public types
                                                   ## ! @name Constructor
                                                   ## ! Constructor
                                                   ## ! @name Setting the sets to access the elements and BVH trees
                                                   ## ! Sets the BVH Sets containing the BVH trees
                                                   ## ! @name Rules for Accept/Reject
                                                   ## ! Rejection of the pair of nodes by bounding boxes.
                                                   ## ! Metric is computed to choose the best branch.
                                                   ## ! Returns true if the pair of nodes should be rejected, false otherwise.
                                                   ## ! @name Selection
                                                   ## ! Selection of the pairs of elements of two BVH trees by the
                                                   ## ! rules defined in Accept/Reject methods.
                                                   ## ! The method requires the BVHSets containing BVH trees to be set.
                                                   ## ! Returns the number of accepted pairs of elements.
                                                   ## ! @name Fields

#  BVH_PairTraverseBVH_VecNt*[NumType; Dimension] = BVH_VecNt[NumType, Dimension]

proc newBVH_PairTraverse*[NumType; Dimension: static[cint]; BVHSetType; MetricType](): BVH_PairTraverse[
    NumType, Dimension, BVHSetType, MetricType] {.cdecl, constructor,
    importcpp: "BVH_PairTraverse<\'*0,\'*1,\'*2,\'*3>(@)", dynlib: tkmath.}
proc setBVHSets*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_PairTraverse[NumType, Dimension, BVHSetType, MetricType];
    theBVHSet1: ptr BVHSetType; theBVHSet2: ptr BVHSetType) {.cdecl,
    importcpp: "SetBVHSets", dynlib: tkmath.}
#proc rejectNode*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
#    this: BVH_PairTraverse[NumType, Dimension, BVHSetType, MetricType];
#    theCornerMin1: BVH_PairTraverseBVH_VecNt;
#    theCornerMax1: BVH_PairTraverseBVH_VecNt;
#    theCornerMin2: BVH_PairTraverseBVH_VecNt;
#    theCornerMax2: BVH_PairTraverseBVH_VecNt; theMetric: var MetricType): bool {.
#    noSideEffect, cdecl, importcpp: "RejectNode", dynlib: tkmath.}
proc accept*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_PairTraverse[NumType, Dimension, BVHSetType, MetricType];
    theIndex1: cint; theIndex2: cint): bool {.cdecl, importcpp: "Accept", dynlib: tkmath.}
proc select*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_PairTraverse[NumType, Dimension, BVHSetType, MetricType]): cint {.
    cdecl, importcpp: "Select", dynlib: tkmath.}
proc select*[NumType; Dimension: static[cint]; BVHSetType; MetricType](
    this: var BVH_PairTraverse[NumType, Dimension, BVHSetType, MetricType];
    theBVH1: Handle[BVH_Tree[NumType, Dimension]];
    theBVH2: Handle[BVH_Tree[NumType, Dimension]]): cint {.cdecl,
    importcpp: "Select", dynlib: tkmath.}