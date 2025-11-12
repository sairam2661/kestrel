#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dynamic_softmax"}> ({
    %0 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "arith.extui"(%2) : (i32) -> i64
    %5 = "arith.extui"(%3) : (i32) -> i64
    %6 = "arith.shli"(%5, %0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %7 = "arith.ori"(%4, %6) : (i64, i64) -> i64
    %8 = "arith.index_castui"(%7) : (i64) -> index
    %9 = "iree_tensor_ext.dispatch.workload.ordinal"(%8) <{ordinal = 0 : index}> : (index) -> index
    %10 = "hal.interface.binding.subspan"(%1, %9) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x?xf16>>
    %11 = "hal.interface.binding.subspan"(%1, %9) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x?xf16>>
    %12 = "iree_tensor_ext.dispatch.tensor.load"(%10, %9, %9) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x?xf16>>, index, index) -> tensor<32x?xf16>
    %13 = "tensor.empty"(%9) : (index) -> tensor<32x?xf16>
    %14 = "linalg.softmax"(%12, %13) <{dimension = 1 : i64}> : (tensor<32x?xf16>, tensor<32x?xf16>) -> tensor<32x?xf16>
    "iree_tensor_ext.dispatch.tensor.store"(%14, %11, %9, %9) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<32x?xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x?xf16>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

