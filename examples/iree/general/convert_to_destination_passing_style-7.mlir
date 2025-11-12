#map = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reshape_fused_target"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 12 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x4xi32>>
    %6 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<12xi32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3, 4>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3x4xi32>>) -> tensor<3x4xi32>
    %8 = "tensor.empty"() : () -> tensor<3x4xi32>
    %9 = "linalg.generic"(%7, %8) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %11 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%11) : (i32) -> ()
    }) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
    %10 = "tensor.collapse_shape"(%9) <{reassociation = [[0, 1]]}> : (tensor<3x4xi32>) -> tensor<12xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 12>, static_strides = array<i64: 1>}> : (tensor<12xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<12xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

