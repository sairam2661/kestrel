#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fold_dynamic_reshape"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%2, %3) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x96xf32>>
    %6 = "hal.interface.binding.subspan"(%4) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x12x8xf32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%5, %2, %3, %2, %3) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808, 96>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?x96xf32>>, index, index, index, index) -> tensor<?x?x96xf32>
    %8 = "tensor.collapse_shape"(%7) <{reassociation = [[0, 1], [2]]}> : (tensor<?x?x96xf32>) -> tensor<?x96xf32>
    %9 = "tensor.dim"(%8, %0) : (tensor<?x96xf32>, index) -> index
    %10 = "tensor.expand_shape"(%8, %9) <{reassociation = [[0], [1, 2]], static_output_shape = array<i64: -9223372036854775808, 12, 8>}> : (tensor<?x96xf32>, index) -> tensor<?x12x8xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %6, %4, %4) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 12, 8>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x12x8xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x12x8xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

