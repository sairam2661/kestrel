#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "branch_op"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<i8>>
    %1 = "hal.interface.binding.subspan"() <{binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<i8>>
    %2 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<i8>>
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i8
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<i8>>) -> tensor<i8>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<i8>>) -> tensor<i8>
    %6 = "arith.trunci"(%3) <{overflowFlags = #arith.overflow<none>}> : (i8) -> i1
    %7 = "arith.trunci"(%4) <{overflowFlags = #arith.overflow<none>}> : (tensor<i8>) -> tensor<i1>
    %8 = "arith.trunci"(%5) <{overflowFlags = #arith.overflow<none>}> : (tensor<i8>) -> tensor<i1>
    "cf.cond_br"(%6, %7, %8)[^bb1, ^bb1] <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (i1, tensor<i1>, tensor<i1>) -> ()
  ^bb1(%9: tensor<i1>):  // 2 preds: ^bb0, ^bb0
    %10 = "arith.extui"(%9) : (tensor<i1>) -> tensor<i8>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (tensor<i8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<i8>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

