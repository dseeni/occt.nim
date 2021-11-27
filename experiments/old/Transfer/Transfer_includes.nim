{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
{.experimental: "callOperator".}

include Transfer_ActorDispatch
include Transfer_ActorOfFinderProcess
include Transfer_ActorOfProcessForFinder
include Transfer_ActorOfProcessForTransient

include Transfer_ActorOfTransientProcess

include Transfer_Binder
include Transfer_BinderOfTransientInteger
include Transfer_DataInfo
include Transfer_DispatchControl
include Transfer_FindHasher
include Transfer_Finder
include Transfer_FinderProcess
#include Transfer_HSequenceOfBinder
#include Transfer_HSequenceOfFinder
include Transfer_IteratorOfProcessForFinder
include Transfer_IteratorOfProcessForTransient
include Transfer_MapContainer
include Transfer_MultipleBinder
include Transfer_ProcessForFinder
include Transfer_ProcessForTransient
include Transfer_ResultFromModel
include Transfer_ResultFromTransient
include Transfer_SequenceOfBinder
include Transfer_SequenceOfFinder
include Transfer_SimpleBinderOfTransient
include Transfer_StatusExec
include Transfer_StatusResult
include Transfer_TransferDeadLoop
include Transfer_TransferDispatch
include Transfer_TransferFailure
include Transfer_TransferInput
include Transfer_TransferIterator
include Transfer_TransferMapOfProcessForFinder
include Transfer_TransferMapOfProcessForTransient
include Transfer_TransferOutput
include Transfer_TransientListBinder
#include Transfer_TransientMapper
include Transfer_TransientProcess
include Transfer_UndefMode
include Transfer_VoidBinder 