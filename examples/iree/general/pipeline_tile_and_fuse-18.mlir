#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [64, 1, 1] subgroup_size = 64>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "small_elementwise", sym_visibility = "public"}> ({
      ^bb0(%arg0: !hal.device):
        %7:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%7#0, %7#1, %7#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "single_pack"}> ({
          %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
          %1 = "arith.constant"() <{value = 0 : index}> : () -> index
          %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<100x250xi32>>
          %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x4x16x32xi32>>
          %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 100, 250>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<100x250xi32>>) -> tensor<100x250xi32>
          %5 = "tensor.empty"() : () -> tensor<16x4x16x32xi32>
          %6 = "linalg.pack"(%4, %5, %0) <{inner_dims_pos = array<i64: 1, 0>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, outer_dims_perm = array<i64: 1, 0>, static_inner_tiles = array<i64: 16, 32>}> {lowering_config = #iree_gpu.lowering_config<{thread = [1, 1, 1, 4], workgroup = [1, 1, 16, 32]}>} : (tensor<100x250xi32>, tensor<16x4x16x32xi32>, i32) -> tensor<16x4x16x32xi32>
          "iree_tensor_ext.dispatch.tensor.store"(%6, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 16, 4, 16, 32>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<16x4x16x32xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x4x16x32xi32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

