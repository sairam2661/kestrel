#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1 + d4, d2 + d5, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d4, d5, d6, d3)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "conv2d_dispatch_0"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "conv2d_dispatch_0", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: index):
        %15:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12) : (index, index, index, index, index, index, index) -> (index, index, index)
        "hal.return"(%15#0, %15#1, %15#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "conv2d_dispatch_0"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 2 : index}> : () -> index
          %3 = "arith.constant"() <{value = 3 : index}> : () -> index
          %4 = "arith.constant"() <{value = 1 : index}> : () -> index
          %5 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x4x2xf32>>
          %6 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x2x2x1xf32>>
          %7 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2x3x1xf32>>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 4, 4, 2>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x4x4x2xf32>>) -> tensor<1x4x4x2xf32>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 3, 2, 2, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3x2x2x1xf32>>) -> tensor<3x2x2x1xf32>
          %10 = "tensor.empty"() : () -> tensor<1x2x3x1xf32>
          %11 = "linalg.fill"(%1, %10) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32):
            "linalg.yield"(%arg3) : (f32) -> ()
          }) : (f32, tensor<1x2x3x1xf32>) -> tensor<1x2x3x1xf32>
          %12 = "linalg.conv_2d_nhwc_hwcf"(%8, %9, %11) <{dilations = dense<1> : tensor<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : tensor<2xi64>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %13 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %14 = "arith.addf"(%arg2, %13) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%14) : (f32) -> ()
          }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<1x4x4x2xf32>, tensor<3x2x2x1xf32>, tensor<1x2x3x1xf32>) -> tensor<1x2x3x1xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%12, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 2, 3, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<1x2x3x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1x2x3x1xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

