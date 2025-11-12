#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1, d2, d3, d4) -> (d0 * 2 + d3, d1 * 2 + d4, d2)>
#map1 = affine_map<(d0, d1, d2, d3, d4) -> (d3, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "generalized_pool", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "generalized_pool", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index):
        %10:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6, %arg7, %arg8, %arg9, %arg10) : (index, index, index, index, index) -> (index, index, index)
        "hal.return"(%10#0, %10#1, %10#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "generalized_pool"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
          %2 = "tensor.empty"() : () -> tensor<14x14x480xf32>
          %3 = "linalg.fill"(%1, %2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32):
            "linalg.yield"(%arg3) : (f32) -> ()
          }) : (f32, tensor<14x14x480xf32>) -> tensor<14x14x480xf32>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<29x29x480xf32>>
          %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<14x14x480xf32>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 29, 29, 480>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<29x29x480xf32>>) -> tensor<29x29x480xf32>
          %7 = "tensor.empty"() : () -> tensor<3x3xf32>
          %8 = "linalg.generic"(%6, %7, %3) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %9 = "arith.maximumf"(%arg2, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%9) : (f32) -> ()
          }) : (tensor<29x29x480xf32>, tensor<3x3xf32>, tensor<14x14x480xf32>) -> tensor<14x14x480xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%8, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 14, 14, 480>, static_strides = array<i64: 1, 1, 1>}> : (tensor<14x14x480xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<14x14x480xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

