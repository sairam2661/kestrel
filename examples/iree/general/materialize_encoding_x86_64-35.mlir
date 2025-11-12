#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512f", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#encoding = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [[#map, #map1], #map2, #map3], iteration_sizes = [2, 128, 64, ?]>
#encoding1 = #iree_encoding.encoding<operand_index = 0 : index, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [[#map, #map4], #map2, #map3], iteration_sizes = [2, 128, 64, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "broadcast_M"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128xf32, #encoding>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf32, #encoding1>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128xf32, #encoding>>) -> tensor<2x128xf32, #encoding>
    %5 = "tensor.empty"() : () -> tensor<2x128x64xf32, #encoding1>
    %6 = "linalg.generic"(%4, %5) <{indexing_maps = [#map1, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      "linalg.yield"(%arg0) : (f32) -> ()
    }) : (tensor<2x128xf32, #encoding>, tensor<2x128x64xf32, #encoding1>) -> tensor<2x128x64xf32, #encoding1>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 128, 64>, static_strides = array<i64: 1, 1, 1>}> : (tensor<2x128x64xf32, #encoding1>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x128x64xf32, #encoding1>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

