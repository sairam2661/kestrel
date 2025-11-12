#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUVectorDistribute workgroup_size = [256, 1, 1] subgroup_size = 64, {gpu_pipeline_options = #iree_gpu.pipeline_options<prefetch_shared_memory = true, no_reduce_shared_memory_bank_conflicts = false>}>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "matmul_transpose_b_256x256x256_i8_i32"}> ({
    "hal.executable.variant"() <{sym_name = "rocm", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "matmul_transpose_b_256x256x256_i8_i32"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index, %arg7: index):
        %14:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6, %arg7) : (index, index) -> (index, index, index)
        "hal.return"(%14#0, %14#1, %14#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_transpose_b_256x256x256_i8_i32"}> ({
          %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xi8>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xi8>>
          %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x256xi32>>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xi8>>) -> tensor<256x256xi8>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x256xi8>>) -> tensor<256x256xi8>
          %7 = "tensor.empty"() : () -> tensor<256x256xi32>
          %8 = "linalg.fill"(%0, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: i32, %arg4: i32):
            "linalg.yield"(%arg3) : (i32) -> ()
          }) : (i32, tensor<256x256xi32>) -> tensor<256x256xi32>
          %9 = "linalg.matmul"(%5, %6, %8) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: i8, %arg1: i8, %arg2: i32):
            %10 = "arith.extsi"(%arg0) : (i8) -> i32
            %11 = "arith.extsi"(%arg1) : (i8) -> i32
            %12 = "arith.muli"(%10, %11) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
            %13 = "arith.addi"(%arg2, %12) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
            "linalg.yield"(%13) : (i32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{mma_kind = #iree_gpu.mma_layout<MFMA_I32_16x16x64_I8>, promote_operands = [0, 1], reduction = [0, 0, 512], subgroup_basis = [[2, 2, 1], [0, 1, 2]], workgroup = [64, 64, 0]}>} : (tensor<256x256xi8>, tensor<256x256xi8>, tensor<256x256xi32>) -> tensor<256x256xi32>
          "iree_tensor_ext.dispatch.tensor.store"(%9, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 256>, static_strides = array<i64: 1, 1>}> : (tensor<256x256xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x256xi32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

