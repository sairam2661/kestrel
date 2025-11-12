#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "group_elementwise_reduction_elementwise"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "group_elementwise_reduction_elementwise", sym_visibility = "public"}> ({
      ^bb0(%arg6: !hal.device, %arg7: index):
        %13:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg7) : (index) -> (index, index, index)
        "hal.return"(%13#0, %13#1, %13#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "group_elementwise_reduction_elementwise"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x64xf32>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8xf32>>
          %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 8, 64>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8x64xf32>>) -> tensor<8x64xf32>
          %5 = "tensor.empty"() : () -> tensor<8xf32>
          %6 = "linalg.fill"(%1, %5) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg4: f32, %arg5: f32):
            "linalg.yield"(%arg4) : (f32) -> ()
          }) : (f32, tensor<8xf32>) -> tensor<8xf32>
          %7 = "linalg.generic"(%4, %6) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg2: f32, %arg3: f32):
            %10 = "arith.addf"(%arg2, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %11 = "arith.addf"(%10, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %12 = "arith.addf"(%11, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%12) : (f32) -> ()
          }) : (tensor<8x64xf32>, tensor<8xf32>) -> tensor<8xf32>
          %8 = "linalg.generic"(%7, %5) <{indexing_maps = [#map2, #map2], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32):
            %9 = "math.sqrt"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
            "linalg.yield"(%9) : (f32) -> ()
          }) : (tensor<8xf32>, tensor<8xf32>) -> tensor<8xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%8, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (tensor<8xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

