#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512f", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [bf16, bf16, bf16], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [bf16, bf16, bf16], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [bf16, bf16, bf16], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "matmul_lowering_bf16bf16bf16_x86_64_avx512f"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%0, %1, %3) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xbf16, #encoding>>
    %5 = "hal.interface.binding.subspan"(%0, %3, %2) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xbf16, #encoding1>>
    %6 = "hal.interface.binding.subspan"(%0, %1, %2) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 2>}> : (index, index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xbf16, #encoding2>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%4, %1, %3, %1, %3) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xbf16, #encoding>>, index, index, index, index) -> tensor<?x?xbf16, #encoding>
    %8 = "iree_tensor_ext.dispatch.tensor.load"(%5, %3, %2, %3, %2) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xbf16, #encoding1>>, index, index, index, index) -> tensor<?x?xbf16, #encoding1>
    %9 = "iree_tensor_ext.dispatch.tensor.load"(%6, %1, %2, %1, %2) <{operandSegmentSizes = array<i32: 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xbf16, #encoding2>>, index, index, index, index) -> tensor<?x?xbf16, #encoding2>
    %10 = "linalg.matmul"(%7, %8, %9) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg0: bf16, %arg1: bf16, %arg2: bf16):
      %11 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (bf16, bf16) -> bf16
      %12 = "arith.addf"(%arg2, %11) <{fastmath = #arith.fastmath<none>}> : (bf16, bf16) -> bf16
      "linalg.yield"(%12) : (bf16) -> ()
    }) : (tensor<?x?xbf16, #encoding>, tensor<?x?xbf16, #encoding1>, tensor<?x?xbf16, #encoding2>) -> tensor<?x?xbf16, #encoding2>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %6, %1, %2, %1, %2) <{operandSegmentSizes = array<i32: 1, 1, 2, 0, 2, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xbf16, #encoding2>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xbf16, #encoding2>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

