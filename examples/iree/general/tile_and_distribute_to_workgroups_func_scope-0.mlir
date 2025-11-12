#map = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d1, d3, d5, d7)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7) -> (d0, d1, d2, d3, d4, d5, d6, d7)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [32, 1, 1] subgroup_size = 32>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index, tensor<2x3x4x5xf32>) -> (), sym_name = "multiple_dim_distribute"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: tensor<2x3x4x5xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0, %arg0, %arg1, %arg2, %arg3) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 4>}> : (index, index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x2x?x3x?x4x?x5xf32>>
    %2 = "tensor.empty"(%arg0, %arg1, %arg2, %arg3) : (index, index, index, index) -> tensor<?x2x?x3x?x4x?x5xf32>
    %3 = "linalg.generic"(%arg4, %2) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) {lowering_config = #iree_gpu.lowering_config<{thread = [1, 1, 1, 1, 1, 1, 1, 1], workgroup = [1, 2, 1, 4, 1, 4, 1, 1]}>} : (tensor<2x3x4x5xf32>, tensor<?x2x?x3x?x4x?x5xf32>) -> tensor<?x2x?x3x?x4x?x5xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %1, %arg0, %arg1, %arg2, %arg3, %arg0, %arg1, %arg2, %arg3) <{operandSegmentSizes = array<i32: 1, 1, 4, 0, 4, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 2, -9223372036854775808, 3, -9223372036854775808, 4, -9223372036854775808, 5>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (tensor<?x2x?x3x?x4x?x5xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x2x?x3x?x4x?x5xf32>>, index, index, index, index, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

