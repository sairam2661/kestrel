#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>, #hal.pipeline.binding<storage_buffer, Indirect>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [64, 2, 1] subgroup_size = 32>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "matmul_fused_multi_result", sym_visibility = "public"}> ({
      ^bb0(%arg10: !hal.device):
        %28:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%28#0, %28#1, %28#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_fused_multi_result"}> ({
          %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x64xi8>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256xi8>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256xi32>>
          %5 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x3136xi8>>
          %6 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x3136xi8>>
          %7 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x256xi8>>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3136, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3136x64xi8>>) -> tensor<3136x64xi8>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 64, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<64x256xi8>>) -> tensor<64x256xi8>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 256>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256xi32>>) -> tensor<256xi32>
          %11 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 3136>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x3136xi8>>) -> tensor<256x3136xi8>
          %12 = "tensor.empty"() : () -> tensor<3136x256xi8>
          %13 = "tensor.empty"() : () -> tensor<256x3136xi8>
          %14 = "tensor.empty"() : () -> tensor<3136x256xi32>
          %15 = "linalg.fill"(%0, %14) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg8: i32, %arg9: i32):
            "linalg.yield"(%arg8) : (i32) -> ()
          }) : (i32, tensor<3136x256xi32>) -> tensor<3136x256xi32>
          %16 = "linalg.matmul"(%8, %9, %15) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg5: i8, %arg6: i8, %arg7: i32):
            %24 = "arith.extsi"(%arg5) : (i8) -> i32
            %25 = "arith.extsi"(%arg6) : (i8) -> i32
            %26 = "arith.muli"(%24, %25) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
            %27 = "arith.addi"(%arg7, %26) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
            "linalg.yield"(%27) : (i32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<WMMAR3_I32_16x16x16_I8>, promote_operands = [0, 1], reduction = [0, 0, 4], subgroup = [2, 4, 0], workgroup = [64, 128, 0]}>} : (tensor<3136x64xi8>, tensor<64x256xi8>, tensor<3136x256xi32>) -> tensor<3136x256xi32>
          %17:2 = "linalg.generic"(%16, %10, %11, %13, %12) <{indexing_maps = [#map3, #map4, #map5, #map5, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 2>}> ({
          ^bb0(%arg0: i32, %arg1: i32, %arg2: i8, %arg3: i8, %arg4: i8):
            %18 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
            %19 = "arith.extsi"(%arg2) : (i8) -> i32
            %20 = "arith.addi"(%18, %19) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
            %21 = "arith.minsi"(%18, %19) : (i32, i32) -> i32
            %22 = "arith.trunci"(%20) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
            %23 = "arith.trunci"(%21) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i8
            "linalg.yield"(%22, %23) : (i8, i8) -> ()
          }) : (tensor<3136x256xi32>, tensor<256xi32>, tensor<256x3136xi8>, tensor<256x3136xi8>, tensor<3136x256xi8>) -> (tensor<256x3136xi8>, tensor<3136x256xi8>)
          "iree_tensor_ext.dispatch.tensor.store"(%17#0, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 3136>, static_strides = array<i64: 1, 1>}> : (tensor<256x3136xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x3136xi8>>) -> ()
          "iree_tensor_ext.dispatch.tensor.store"(%17#1, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3136, 256>, static_strides = array<i64: 1, 1>}> : (tensor<3136x256xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3136x256xi8>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

