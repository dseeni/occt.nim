{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 


include ncollection_accallocator
include ncollection_alignedallocator
include ncollection_array1
include ncollection_array2
include ncollection_baseallocator
include ncollection_baselist
include ncollection_basemap
include ncollection_basesequence
include ncollection_basevector
include ncollection_buffer
include ncollection_cellfilter
include ncollection_datamap
include ncollection_defaulthasher
include ncollection_definealloc
#include ncollection_definearray1
#include ncollection_definearray2
#include ncollection_definedatamap
#include ncollection_definedoublemap
include ncollection_defineharray1
include ncollection_defineharray2
include ncollection_definehsequence
#include ncollection_defineindexeddatamap
#include ncollection_defineindexedmap
#include ncollection_definelist
#include ncollection_definemap
#include ncollection_definesequence
#include ncollection_definevector
include ncollection_doublemap
include ncollection_ebtree
include ncollection_handle
include ncollection_harray1
include ncollection_harray2
include ncollection_heapallocator
include ncollection_hsequence
include ncollection_incallocator
include ncollection_indexeddatamap
include ncollection_indexedmap
include ncollection_lerp
include ncollection_list
include ncollection_listnode
include ncollection_localarray
include ncollection_map
include ncollection_mat4
include ncollection_sequence
include ncollection_shared
include ncollection_sparsearray
include ncollection_sparsearraybase
include ncollection_stdallocator
include ncollection_stliterator
include ncollection_string
include ncollection_tlistiterator
include ncollection_tlistnode
include ncollection_typedef
include ncollection_ubtree
include ncollection_ubtreefiller
include ncollection_utfiterator
include ncollection_utfstring
include ncollection_vec2
include ncollection_vec3
include ncollection_vec4
include ncollection_vector
include ncollection_winheapallocator