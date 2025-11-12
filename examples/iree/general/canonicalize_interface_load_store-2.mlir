#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dont_fold_reshape_with_not_full_load"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 96 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<6x3x1x96xf32>>
    %5 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x3x96xf32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 3, 0, 0, 0>, static_sizes = array<i64: 3, 3, 1, 96>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<6x3x1x96xf32>>) -> tensor<3x3x1x96xf32>
    %7 = "tensor.collapse_shape"(%6) <{reassociation = [[0, 1, 2, 3]]}> : (tensor<3x3x1x96xf32>) -> tensor<864xf32>
    %8 = "tensor.expand_shape"(%7) <{reassociation = [[0, 1, 2]], static_output_shape = array<i64: 3, 3, 96>}> : (tensor<864xf32>) -> tensor<3x3x96xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%8, %5, %0, %0, %0, %1, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 3, 0, 3>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 3, 3, 96>, static_strides = array<i64: -9223372036854775808, -9223372036854775808, -9223372036854775808>}> : (tensor<3x3x96xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x3x96xf32>>, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

