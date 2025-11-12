#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<uniform_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<uniform_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "micro_kernel_op"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> f32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i64
    %4 = "hal.interface.binding.subspan"(%0, %1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %5 = "hal.interface.binding.subspan"(%0, %1) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>
    %6 = "hal.interface.binding.subspan"(%0, %1) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>
    %7 = "hal.interface.binding.subspan"(%0, %1) <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%4, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%5, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %10 = "iree_tensor_ext.dispatch.tensor.load"(%6, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %11 = "iree_tensor_ext.dispatch.tensor.load"(%7, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index) -> tensor<?x?xf32>
    %12:2 = "iree_codegen.ukernel.generic"(%8, %9, %10, %2, %11, %3) <{operandSegmentSizes = array<i32: 1, 2, 3>, u_kernel_fn_name = "foo"}> : (tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>, f32, tensor<?x?xf32>, i64) -> (tensor<?x?xf32>, tensor<?x?xf32>)
    "iree_tensor_ext.dispatch.tensor.store"(%12#0, %5, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%12#1, %6, %0, %1, %0, %1) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

