#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 4, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [bf16, bf16, bf16], user_indexing_maps = [#map, #map1, #map2]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "drop_encoding_for_hal_flow_ops_dynamic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : i64}> : () -> i64
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
    %6 = "arith.extui"(%2) : (i32) -> i64
    %7 = "arith.extui"(%3) : (i32) -> i64
    %8 = "arith.shli"(%7, %1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %9 = "arith.ori"(%6, %8) : (i64, i64) -> i64
    %10 = "arith.index_castui"(%9) : (i64) -> index
    %11 = "arith.extui"(%4) : (i32) -> i64
    %12 = "arith.extui"(%5) : (i32) -> i64
    %13 = "arith.shli"(%12, %1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    %14 = "arith.ori"(%11, %13) : (i64, i64) -> i64
    %15 = "arith.index_castui"(%14) : (i64) -> index
    %16 = "iree_tensor_ext.dispatch.workload.ordinal"(%10) <{ordinal = 0 : index}> : (index) -> index
    %17 = "iree_tensor_ext.dispatch.workload.ordinal"(%15) <{ordinal = 1 : index}> : (index) -> index
    %18 = "hal.interface.binding.subspan"(%0, %16, %17) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xbf16>>
    %19 = "hal.interface.binding.subspan"(%0, %16, %17) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xbf16, #encoding>>
    %20 = "iree_tensor_ext.dispatch.tensor.load"(%18, %16, %17, %16, %17) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xbf16>>, index, index, index, index) -> tensor<?x?xbf16>
    %21 = "iree_encoding.set_encoding"(%20) : (tensor<?x?xbf16>) -> tensor<?x?xbf16, #encoding>
    "iree_tensor_ext.dispatch.tensor.store"(%21, %19, %16, %17, %16, %17) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xbf16, #encoding>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xbf16, #encoding>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

