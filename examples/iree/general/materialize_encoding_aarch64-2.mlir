#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+sve", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "aarch64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [128, 32, 320, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "batch_matmul_RHS"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "arith.index_castui"(%1) {stream.alignment = 64 : index} : (i32) -> index
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x32x320xf32>>
    %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x32x320xf32, #encoding>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 128, 32, 320>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x32x320xf32>>) -> tensor<128x32x320xf32>
    %6 = "iree_encoding.set_encoding"(%5) : (tensor<128x32x320xf32>) -> tensor<128x32x320xf32, #encoding>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 128, 32, 320>, static_strides = array<i64: 1, 1, 1>}> : (tensor<128x32x320xf32, #encoding>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x32x320xf32, #encoding>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

