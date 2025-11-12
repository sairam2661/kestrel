#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>]>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [8, 4, 1] subgroup_size = 32>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "main", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "skinny_matmul_config", sym_visibility = "public"}> ({
      ^bb0(%arg8: !hal.device):
        %21:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%21#0, %21#1, %21#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "skinny_matmul_config"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = 102227904 : index}> : () -> index
          %2 = "arith.constant"() <{value = 111444672 : index}> : () -> index
          %3 = "arith.constant"() <{value = 4014080 : index}> : () -> index
          %4 = "arith.constant"() <{value = 0 : index}> : () -> index
          %5 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x256xf32>>
          %6 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x3136xf32>>
          %7 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128xf32>>
          %8 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x3136xf32>>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 128, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x256xf32>>) -> tensor<128x256xf32>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 3136>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x3136xf32>>) -> tensor<256x3136xf32>
          %11 = "iree_tensor_ext.dispatch.tensor.load"(%7) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 128>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128xf32>>) -> tensor<128xf32>
          %12 = "tensor.empty"() : () -> tensor<128x3136xf32>
          %13 = "linalg.fill"(%0, %12) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg6: f32, %arg7: f32):
            "linalg.yield"(%arg6) : (f32) -> ()
          }) : (f32, tensor<128x3136xf32>) -> tensor<128x3136xf32>
          %14 = "linalg.matmul"(%9, %10, %13) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
            %19 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %20 = "arith.addf"(%arg5, %19) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%20) : (f32) -> ()
          }) {lowering_config = #iree_gpu.lowering_config<{promote_operands = [0, 1], reduction = [0, 0, 4], thread = [1, 4, 0], workgroup = [4, 32, 0]}>} : (tensor<128x256xf32>, tensor<256x3136xf32>, tensor<128x3136xf32>) -> tensor<128x3136xf32>
          %15 = "linalg.generic"(%14, %11, %12) <{indexing_maps = [#map3, #map4, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %16 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %17 = "arith.cmpf"(%16, %0) <{fastmath = #arith.fastmath<none>, predicate = 9 : i64}> : (f32, f32) -> i1
            %18 = "arith.select"(%17, %16, %0) : (i1, f32, f32) -> f32
            "linalg.yield"(%18) : (f32) -> ()
          }) : (tensor<128x3136xf32>, tensor<128xf32>, tensor<128x3136xf32>) -> tensor<128x3136xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%15, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 128, 3136>, static_strides = array<i64: 1, 1>}> : (tensor<128x3136xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x3136xf32>>) -> ()
          "func.return"() : () -> ()
        }) {translation_info = #translation} : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

