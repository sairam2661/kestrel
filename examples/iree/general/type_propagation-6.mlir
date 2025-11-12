#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "for_loop"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi8>>
    %4 = "hal.interface.binding.subspan"(%0) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%3, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi8>>, index, index) -> tensor<?xi8>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>, index, index) -> tensor<?xi8>
    %7 = "arith.trunci"(%5) <{overflowFlags = #arith.overflow<none>}> : (tensor<?xi8>) -> tensor<?xi1>
    %8 = "arith.trunci"(%6) <{overflowFlags = #arith.overflow<none>}> : (tensor<?xi8>) -> tensor<?xi1>
    %9 = "arith.constant"() <{value = 0 : index}> : () -> index
    %10 = "scf.for"(%9, %0, %2, %8) ({
    ^bb0(%arg0: index, %arg1: tensor<?xi1>):
      %12 = "tensor.extract_slice"(%7, %arg0, %2) <{operandSegmentSizes = array<i32: 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi1>, index, index) -> tensor<?xi1>
      %13 = "tensor.insert_slice"(%12, %arg1, %arg0, %2) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi1>, tensor<?xi1>, index, index) -> tensor<?xi1>
      "scf.yield"(%13) : (tensor<?xi1>) -> ()
    }) : (index, index, index, tensor<?xi1>) -> tensor<?xi1>
    %11 = "arith.extui"(%10) : (tensor<?xi1>) -> tensor<?xi8>
    "iree_tensor_ext.dispatch.tensor.store"(%11, %4, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

