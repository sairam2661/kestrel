#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d1, d2)>
#map4 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [256, 1, 1] subgroup_size = 64, {gpu_pipeline_options = #iree_gpu.pipeline_options<prefetch_shared_memory = false, no_reduce_shared_memory_bank_conflicts = true>}>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "data_tiled_scaled_mma_inner_tiled", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %12:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%12#0, %12#1, %12#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "data_tiled_scaled_mma_inner_tiled"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x1x8x4x4x16x32xf4E2M1FN>>
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x1x4x2x4x4x16x32xf4E2M1FN>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x8x4x16x4xf8E8M0FNU>>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x4x2x4x16x4xf8E8M0FNU>>
          %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 4 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<9x9x4x8x2x4x16x4xf32>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 9, 9, 1, 8, 4, 4, 16, 32>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x1x8x4x4x16x32xf4E2M1FN>>) -> tensor<9x9x1x8x4x4x16x32xf4E2M1FN>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 9, 9, 1, 4, 2, 4, 4, 16, 32>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x1x4x2x4x4x16x32xf4E2M1FN>>) -> tensor<9x9x1x4x2x4x4x16x32xf4E2M1FN>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 9, 9, 8, 4, 16, 4>, static_strides = array<i64: 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x8x4x16x4xf8E8M0FNU>>) -> tensor<9x9x8x4x16x4xf8E8M0FNU>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 9, 9, 4, 2, 4, 16, 4>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<9x9x4x2x4x16x4xf8E8M0FNU>>) -> tensor<9x9x4x2x4x16x4xf8E8M0FNU>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 9, 9, 4, 8, 2, 4, 16, 4>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<9x9x4x8x2x4x16x4xf32>>) -> tensor<9x9x4x8x2x4x16x4xf32>
          %11 = "iree_codegen.inner_tiled"(%6, %7, %8, %9, %10) <{indexing_maps = [#map, #map1, #map2, #map3, #map4], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], kind = #iree_gpu.data_tiled_scaled_mma_layout<intrinsic = MFMA_SCALE_F32_16x16x128_B32, lhs_elem_type = f4E2M1FN, rhs_elem_type = f4E2M1FN, acc_elem_type = f32, intrinsics_m = 8, intrinsics_n = 2, subgroups_n = 4, intrinsics_k = 4>, operandSegmentSizes = array<i32: 4, 1>}> {lowering_config = #iree_gpu.lowering_config<{promote_operands = [0, 1], reduction = [0, 0, 1, 1], workgroup = [1, 1, 0, 0]}>} : (tensor<9x9x1x8x4x4x16x32xf4E2M1FN>, tensor<9x9x1x4x2x4x4x16x32xf4E2M1FN>, tensor<9x9x8x4x16x4xf8E8M0FNU>, tensor<9x9x4x2x4x16x4xf8E8M0FNU>, tensor<9x9x4x8x2x4x16x4xf32>) -> tensor<9x9x4x8x2x4x16x4xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%11, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0, 0, 0, 0, 0>, static_sizes = array<i64: 9, 9, 4, 8, 2, 4, 16, 4>, static_strides = array<i64: 1, 1, 1, 1, 1, 1, 1, 1>}> : (tensor<9x9x4x8x2x4x16x4xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<9x9x4x8x2x4x16x4xf32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

