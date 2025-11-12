#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "generic_op_illegal_operand_i7"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi8>>
    %2 = "hal.interface.binding.subspan"(%0) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi8>>, index, index) -> tensor<?xi8>
    %4 = "arith.trunci"(%3) <{overflowFlags = #arith.overflow<none>}> : (tensor<?xi8>) -> tensor<?xi7>
    %5 = "tensor.empty"(%0) : (index) -> tensor<?xi8>
    %6 = "linalg.generic"(%4, %5) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i7, %arg1: i8):
      %7 = "arith.extui"(%arg0) : (i7) -> i8
      "linalg.yield"(%7) : (i8) -> ()
    }) : (tensor<?xi7>, tensor<?xi8>) -> tensor<?xi8>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %2, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

