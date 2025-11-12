#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [64, 1, 1] subgroup_size = 64>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "small_elementwise", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device):
        %11:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%11#0, %11#1, %11#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "map_scatter"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = true}> : () -> i1
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<2048x2048xf32, #hal.descriptor_type<storage_buffer>>
          %3 = "amdgpu.fat_raw_buffer_cast"(%2) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>, resetOffset}> : (memref<2048x2048xf32, #hal.descriptor_type<storage_buffer>>) -> memref<2048x2048xf32, #amdgpu.address_space<fat_raw_buffer>>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<16x16x128x128xf32, #hal.descriptor_type<storage_buffer>>
          %5 = "amdgpu.fat_raw_buffer_cast"(%4) <{boundsCheck = true, operandSegmentSizes = array<i32: 1, 0, 0>, resetOffset}> : (memref<16x16x128x128xf32, #hal.descriptor_type<storage_buffer>>) -> memref<16x16x128x128xf32, #amdgpu.address_space<fat_raw_buffer>>
          %6 = "iree_codegen.load_from_buffer"(%3) : (memref<2048x2048xf32, #amdgpu.address_space<fat_raw_buffer>>) -> tensor<2048x2048xf32>
          %7 = "tensor.empty"() : () -> tensor<16x16x128x128xf32>
          %8 = "iree_linalg_ext.map_scatter"(%6, %7) ({
          ^bb0(%arg0: index, %arg1: index):
            %9:2 = "affine.delinearize_index"(%arg0) <{static_basis = array<i64: 16, 128>}> : (index) -> (index, index)
            %10:2 = "affine.delinearize_index"(%arg1) <{static_basis = array<i64: 16, 128>}> : (index) -> (index, index)
            "iree_linalg_ext.yield"(%9#0, %10#0, %9#1, %10#1, %1) : (index, index, index, index, i1) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{thread = [1, 4], workgroup = [1, 256]}>} : (tensor<2048x2048xf32>, tensor<16x16x128x128xf32>) -> tensor<16x16x128x128xf32>
          "iree_codegen.store_to_buffer"(%8, %5) : (tensor<16x16x128x128xf32>, memref<16x16x128x128xf32, #amdgpu.address_space<fat_raw_buffer>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

