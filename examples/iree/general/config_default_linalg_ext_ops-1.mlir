#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "static_3d_sort"}> ({
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x32x128xi32>
    %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<64x32x128xi32>
    "linalg.generic"(%3, %4) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      "linalg.yield"(%arg2) : (i32) -> ()
    }) : (memref<64x32x128xi32>, memref<64x32x128xi32>) -> ()
    "iree_linalg_ext.sort"(%4) <{dimension = 1 : i64, operandSegmentSizes = array<i32: 0, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "iree_linalg_ext.yield"(%5) : (i1) -> ()
    }) : (memref<64x32x128xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

