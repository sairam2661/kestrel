#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d5, d4)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d5, d3)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> ()>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [128, 1, 1] subgroup_size = 64, {}>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "attention_gather_k", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "attention_gather_k", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %19:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%19#0, %19#1, %19#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "attention_gather_k"}> ({
          %0 = "arith.constant"() <{value = 1.250000e-01 : f16}> : () -> f16
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xf16>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xi64>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xf16>>
          %5 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xf16>>
          %6 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x10x4096x64xf16>>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 10, 4096, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xf16>>) -> tensor<2x10x4096x64xf16>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 10, 4096, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xi64>>) -> tensor<2x10x4096x64xi64>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 10, 4096, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xf16>>) -> tensor<2x10x4096x64xf16>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 10, 4096, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x10x4096x64xf16>>) -> tensor<2x10x4096x64xf16>
          %11 = "tensor.empty"() : () -> tensor<2x10x4096x64xf16>
          %12 = "linalg.generic"(%8, %11) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg1: i64, %arg2: f16):
            %14 = "linalg.index"() <{dim = 0 : i64}> : () -> index
            %15 = "linalg.index"() <{dim = 1 : i64}> : () -> index
            %16 = "arith.index_cast"(%arg1) : (i64) -> index
            %17 = "linalg.index"() <{dim = 3 : i64}> : () -> index
            %18 = "tensor.extract"(%7, %14, %15, %16, %17) : (tensor<2x10x4096x64xf16>, index, index, index, index) -> f16
            "linalg.yield"(%18) : (f16) -> ()
          }) : (tensor<2x10x4096x64xi64>, tensor<2x10x4096x64xf16>) -> tensor<2x10x4096x64xf16>
          %13 = "iree_linalg_ext.attention"(%9, %12, %10, %0, %11) <{decomposition_config = {pv_attrs = {attention_pv_matmul, lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_16x16x16_F16>, promote_operands = [1], subgroup_basis = [[1, 1, 2, 1, 1, 1], [0, 1, 2, 3, 5]]}>}, qk_attrs = {attention_qk_matmul, lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_16x16x16_F16>, promote_operands = [0, 1], subgroup_basis = [[1, 1, 2, 1, 1, 1], [0, 1, 2, 3, 4]]}>}}, indexing_maps = [#map1, #map2, #map3, #map4, #map5]}> ({
          ^bb0(%arg0: f32):
            "iree_linalg_ext.yield"(%arg0) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{promote_operands = [0, 1, 2], reduction = [0, 0, 0, 0, 0, 64], workgroup = [1, 1, 64, 64, 0, 0]}>} : (tensor<2x10x4096x64xf16>, tensor<2x10x4096x64xf16>, tensor<2x10x4096x64xf16>, f16, tensor<2x10x4096x64xf16>) -> tensor<2x10x4096x64xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%13, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 10, 4096, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<2x10x4096x64xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x10x4096x64xf16>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

