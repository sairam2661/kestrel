#map = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reshape_fused_source_and_copyout"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<12xi32>>
    %1 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x4xi32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3, 4>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x4xi32>>) -> tensor<3x4xi32>
    %3 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x4xi32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 12>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<12xi32>>) -> tensor<12xi32>
    %5 = "tensor.expand_shape"(%4) <{reassociation = [[0, 1]], static_output_shape = array<i64: 3, 4>}> : (tensor<12xi32>) -> tensor<3x4xi32>
    %6 = "linalg.generic"(%5, %2) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %7 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%7) : (i32) -> ()
    }) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3, 4>, static_strides = array<i64: 1, 1>}> : (tensor<3x4xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x4xi32>>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%5, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3, 4>, static_strides = array<i64: 1, 1>}> : (tensor<3x4xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x4xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

