#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d5, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d5, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> ()>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [64] subgroup_size = 64>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "online_attention_split_k2", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "online_attention_split_k2", sym_visibility = "public"}> ({
      ^bb0(%arg1: !hal.device):
        %15:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%15#0, %15#1, %15#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "online_attention_split_k2"}> ({
          %0 = "arith.constant"() <{value = 1.000000e+00 : f16}> : () -> f16
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x16x64xf16>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x256x64xf16>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x256x64xf16>>
          %5 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4x16x64xf32>>
          %6 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4x16xf32>>
          %7 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 5 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4x16xf32>>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 16, 64>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x16x64xf16>>) -> tensor<1x16x64xf16>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 4, 256, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x256x64xf16>>) -> tensor<1x4x256x64xf16>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 4, 256, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x256x64xf16>>) -> tensor<1x4x256x64xf16>
          %11 = "tensor.empty"() : () -> tensor<1x4x16x64xf32>
          %12 = "tensor.empty"() : () -> tensor<1x4x16xf32>
          %13 = "tensor.empty"() : () -> tensor<1x4x16xf32>
          %14:3 = "iree_linalg_ext.online_attention"(%8, %9, %10, %0, %11, %12, %13) <{decomposition_config = {pv_attrs = {attention_pv_matmul, lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_16x16x16_F16>, promote_operands = [1], subgroup_basis = [[1, 1, 1, 1, 1, 1], [0, 1, 2, 3, 5]]}>}, qk_attrs = {attention_qk_matmul, lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_16x16x16_F16>, promote_operands = [0, 1], subgroup_basis = [[1, 1, 1, 1, 1, 1], [0, 1, 2, 4, 5]]}>}}, indexing_maps = [#map, #map1, #map2, #map3, #map4, #map5, #map5]}> ({
          ^bb0(%arg0: f32):
            "iree_linalg_ext.yield"(%arg0) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{promote_operands = [0, 1, 2], reduction = [0, 0, 0, 0, 0, 32], workgroup = [1, 1, 16, 0, 0, 0]}>} : (tensor<1x16x64xf16>, tensor<1x4x256x64xf16>, tensor<1x4x256x64xf16>, f16, tensor<1x4x16x64xf32>, tensor<1x4x16xf32>, tensor<1x4x16xf32>) -> (tensor<1x4x16x64xf32>, tensor<1x4x16xf32>, tensor<1x4x16xf32>)
          "iree_tensor_ext.dispatch.tensor.store"(%14#0, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 4, 16, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x4x16x64xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4x16x64xf32>>) -> ()
          "iree_tensor_ext.dispatch.tensor.store"(%14#1, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 4, 16>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x4x16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4x16xf32>>) -> ()
          "iree_tensor_ext.dispatch.tensor.store"(%14#2, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 1, 4, 16>, static_strides = array<i64: 1, 1, 1>}> : (tensor<1x4x16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x4x16xf32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

