#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [128, 1, 1] subgroup_size = 32, {gpu_pipeline_options = #iree_gpu.pipeline_options<prefetch_shared_memory = false, no_reduce_shared_memory_bank_conflicts = false, use_igemm_convolution = false>}>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "matvec_dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "matvec_dispatch_0_matmul_transpose_b_32000x2x4096_f16xf16xf32", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device):
        %14:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%14#0, %14#1, %14#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matvec_dispatch_0_matmul_transpose_b_32000x2x4096_f16xf16xf32"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32000x4096xf16>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x4096xf16>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32000x2xf32>>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32000, 4096>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32000x4096xf16>>) -> tensor<32000x4096xf16>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 4096>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x4096xf16>>) -> tensor<2x4096xf16>
          %7 = "tensor.empty"() : () -> tensor<32000x2xf32>
          %8 = "linalg.fill"(%0, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32):
            "linalg.yield"(%arg3) : (f32) -> ()
          }) : (f32, tensor<32000x2xf32>) -> tensor<32000x2xf32>
          %9 = "linalg.generic"(%5, %6, %8) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f32):
            %10 = "arith.extf"(%arg0) : (f16) -> f32
            %11 = "arith.extf"(%arg1) : (f16) -> f32
            %12 = "arith.mulf"(%10, %11) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %13 = "arith.addf"(%arg2, %12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%13) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{lane_basis = [[1, 1, 32], [0, 1, 2]], partial_reduction = [0, 0, 512], subgroup_basis = [[1, 1, 4], [0, 1, 2]], thread = [0, 0, 4], workgroup = [16, 1, 0]}>} : (tensor<32000x4096xf16>, tensor<2x4096xf16>, tensor<32000x2xf32>) -> tensor<32000x2xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%9, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32000, 2>, static_strides = array<i64: 1, 1>}> : (tensor<32000x2xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32000x2xf32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

