#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [128, 1, 1] subgroup_size = 64, {}>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "matmul_gather_rhs", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "matmul_gather_rhs", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device):
        %24:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%24#0, %24#1, %24#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_gather_rhs"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x64xf16>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x64xi64>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x64xf16>>
          %5 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096x4096xf16>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x64xf16>>) -> tensor<4096x64xf16>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x64xi64>>) -> tensor<4096x64xi64>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x64xf16>>) -> tensor<4096x64xf16>
          %9 = "tensor.empty"() : () -> tensor<4096x4096xf16>
          %10 = "tensor.empty"() : () -> tensor<4096x4096xf32>
          %11 = "tensor.empty"() : () -> tensor<4096x64xf16>
          %12 = "linalg.generic"(%7, %11) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: i64, %arg8: f16):
            %21 = "linalg.index"() <{dim = 0 : i64}> : () -> index
            %22 = "arith.index_cast"(%arg7) : (i64) -> index
            %23 = "tensor.extract"(%6, %21, %22) : (tensor<4096x64xf16>, index, index) -> f16
            "linalg.yield"(%23) : (f16) -> ()
          }) : (tensor<4096x64xi64>, tensor<4096x64xf16>) -> tensor<4096x64xf16>
          %13 = "linalg.fill"(%0, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg5: f32, %arg6: f32):
            "linalg.yield"(%arg5) : (f32) -> ()
          }) : (f32, tensor<4096x4096xf32>) -> tensor<4096x4096xf32>
          %14 = "linalg.generic"(%8, %12, %13) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg2: f16, %arg3: f16, %arg4: f32):
            %17 = "arith.extf"(%arg2) : (f16) -> f32
            %18 = "arith.extf"(%arg3) : (f16) -> f32
            %19 = "arith.mulf"(%17, %18) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %20 = "arith.addf"(%arg4, %19) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%20) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_F32_16x16x16_F16>, promote_operands = [0, 1], reduction = [0, 0, 64], subgroup_basis = [[2, 2, 1], [0, 1, 2]], workgroup = [64, 128, 0]}>} : (tensor<4096x64xf16>, tensor<4096x64xf16>, tensor<4096x4096xf32>) -> tensor<4096x4096xf32>
          %15 = "linalg.generic"(%14, %9) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f16):
            %16 = "arith.truncf"(%arg0) : (f32) -> f16
            "linalg.yield"(%16) : (f16) -> ()
          }) : (tensor<4096x4096xf32>, tensor<4096x4096xf16>) -> tensor<4096x4096xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%15, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 4096>, static_strides = array<i64: 1, 1>}> : (tensor<4096x4096xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096x4096xf16>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

