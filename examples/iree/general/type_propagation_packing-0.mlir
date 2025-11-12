#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "generic_op_i4"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi4>>
    %2 = "hal.interface.binding.subspan"(%0) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi4>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi4>>, index, index) -> tensor<?xi4>
    %4 = "tensor.empty"(%0) : (index) -> tensor<?xi4>
    %5 = "linalg.generic"(%3, %4) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i4, %arg1: i4):
      %6 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i4, i4) -> i4
      "linalg.yield"(%6) : (i4) -> ()
    }) : (tensor<?xi4>, tensor<?xi4>) -> tensor<?xi4>
    "iree_tensor_ext.dispatch.tensor.store"(%5, %2, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi4>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi4>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

