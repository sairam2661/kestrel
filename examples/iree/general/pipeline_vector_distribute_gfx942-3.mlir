#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d4, d2, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d4, d3, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [256, 1, 1] subgroup_size = 64>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "matmul_multiple_k"}> ({
    "hal.executable.variant"() <{sym_name = "rocm", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "matmul_multiple_k", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device):
        %12:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%12#0, %12#1, %12#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_multiple_k"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128x64x2048xf16>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10x128x64x2048xf16>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x10x64x64xf16>>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 128, 64, 2048>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x128x64x2048xf16>>) -> tensor<2x128x64x2048xf16>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 10, 128, 64, 2048>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10x128x64x2048xf16>>) -> tensor<10x128x64x2048xf16>
          %7 = "tensor.empty"() : () -> tensor<2x10x64x64xf16>
          %8 = "linalg.fill"(%0, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f16, %arg4: f16):
            "linalg.yield"(%arg3) : (f16) -> ()
          }) : (f16, tensor<2x10x64x64xf16>) -> tensor<2x10x64x64xf16>
          %9 = "linalg.generic"(%5, %6, %8) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
            %10 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %11 = "arith.addf"(%10, %arg2) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%11) : (f16) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_16x16x16_F16>, promote_operands = [0, 1], reduction = [0, 0, 0, 0, 1, 128], subgroup_basis = [[1, 1, 1, 4, 1, 1], [0, 1, 2, 3, 4, 5]], workgroup = [1, 1, 64, 64, 0, 0]}>} : (tensor<2x128x64x2048xf16>, tensor<10x128x64x2048xf16>, tensor<2x10x64x64xf16>) -> tensor<2x10x64x64xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%9, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 10, 64, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<2x10x64x64xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x10x64x64xf16>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

