#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [64, 1, 1] subgroup_size = 64>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "small_matvec", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device):
        %10:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%10#0, %10#1, %10#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "small_matvec"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10x10xf32>>
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10x1xf32>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<10x1xf32>>
          %4 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 10, 10>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10x10xf32>>) -> tensor<10x10xf32>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 10, 1>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10x1xf32>>) -> tensor<10x1xf32>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 10, 1>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<10x1xf32>>) -> tensor<10x1xf32>
          %7 = "linalg.matmul"(%4, %5, %6) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %8 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %9 = "arith.addf"(%arg2, %8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%9) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{reduction = [0, 0, 2], thread = [1, 1, 0], workgroup = [1, 64, 0]}>} : (tensor<10x10xf32>, tensor<10x1xf32>, tensor<10x1xf32>) -> tensor<10x1xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%7, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 10, 1>, static_strides = array<i64: 1, 1>}> : (tensor<10x1xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<10x1xf32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

