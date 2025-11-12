#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [256, 1, 1] subgroup_size = 64, {gpu_pipeline_options = #iree_gpu.pipeline_options<prefetch_shared_memory = true, no_reduce_shared_memory_bank_conflicts = false>}>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "contract_schedule_considering_read_layout", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "contract_schedule_considering_read_layout", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device):
        %17:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%17#0, %17#1, %17#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "contract_schedule_considering_read_layout"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
          %4 = "arith.index_castui"(%1) : (i32) -> index
          %5 = "arith.index_castui"(%2) : (i32) -> index
          %6 = "arith.index_castui"(%3) : (i32) -> index
          %7 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x160x1536xf16>>
          %8 = "hal.interface.binding.subspan"(%5) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1536x1536xf16>>
          %9 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x160x1536xf16>>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%7) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 160, 1536>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x160x1536xf16>>) -> tensor<2x160x1536xf16>
          %11 = "iree_tensor_ext.dispatch.tensor.load"(%8) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 1536, 1536>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x1536x1536xf16>>) -> tensor<2x1536x1536xf16>
          %12 = "tensor.empty"() : () -> tensor<2x160x1536xf16>
          %13 = "linalg.fill"(%0, %12) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f16, %arg4: f16):
            "linalg.yield"(%arg3) : (f16) -> ()
          }) : (f16, tensor<2x160x1536xf16>) -> tensor<2x160x1536xf16>
          %14 = "linalg.batch_matmul"(%10, %11, %13) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
            %15 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %16 = "arith.addf"(%arg2, %15) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%16) : (f16) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_16x16x16_F16>, promote_operands = [0, 1], reduction = [0, 0, 0, 128], subgroup_basis = [[1, 1, 4, 1], [0, 1, 2, 3]], workgroup = [1, 16, 128, 0]}>} : (tensor<2x160x1536xf16>, tensor<2x1536x1536xf16>, tensor<2x160x1536xf16>) -> tensor<2x160x1536xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%14, %9) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, 160, 1536>, static_strides = array<i64: 1, 1, 1>}> : (tensor<2x160x1536xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x160x1536xf16>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

