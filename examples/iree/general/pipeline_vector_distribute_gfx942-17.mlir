#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d4, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d4, d5)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> ()>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d5)>
#map5 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d1, d2, d0, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [256, 1, 1] subgroup_size = 64>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "attention_mfma_32x32x8", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "attention_mfma_32x32x8", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %13:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%13#0, %13#1, %13#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "attention_mfma_32x32x8"}> ({
          %0 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<24x64x4608x128xf16>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<24x4608x128xf16>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<24x4608x128xf16>>
          %5 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x4608x24x128xf16>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 24, 64, 4608, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<24x64x4608x128xf16>>) -> tensor<24x64x4608x128xf16>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 24, 4608, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<24x4608x128xf16>>) -> tensor<24x4608x128xf16>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 24, 4608, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<24x4608x128xf16>>) -> tensor<24x4608x128xf16>
          %9 = "tensor.empty"() : () -> tensor<64x4608x24x128xf16>
          %10 = "tensor.empty"() : () -> tensor<24x64x4608x128xf16>
          %11 = "iree_linalg_ext.attention"(%6, %7, %8, %0, %10) <{decomposition_config = {pv_attrs = {attention_pv_matmul, lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_32x32x8_F16>, promote_operands = [1], subgroup_basis = [[1, 1, 4, 1, 1, 1], [0, 1, 2, 4, 5]]}>}, qk_attrs = {attention_qk_matmul, lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_32x32x8_F16>, promote_operands = [0, 1], subgroup_basis = [[1, 1, 4, 1, 1, 1], [0, 1, 2, 3, 4]]}>}}, indexing_maps = [#map, #map1, #map2, #map3, #map4]}> ({
          ^bb0(%arg2: f32):
            "iree_linalg_ext.yield"(%arg2) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{promote_operands = [0, 1, 2], reduction = [0, 0, 0, 0, 32, 0], workgroup = [1, 1, 128, 0, 0, 64]}>} : (tensor<24x64x4608x128xf16>, tensor<24x4608x128xf16>, tensor<24x4608x128xf16>, f16, tensor<24x64x4608x128xf16>) -> tensor<24x64x4608x128xf16>
          %12 = "linalg.generic"(%11, %9) <{indexing_maps = [#map5, #map6], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16):
            "linalg.yield"(%arg0) : (f16) -> ()
          }) : (tensor<24x64x4608x128xf16>, tensor<64x4608x24x128xf16>) -> tensor<64x4608x24x128xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%12, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 64, 4608, 24, 128>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<64x4608x24x128xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<64x4608x24x128xf16>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

