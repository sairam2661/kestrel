#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d4, d2 + d5, d3 + d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d1, d4, d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "conv_nchw_dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "conv_nchw", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: index, %arg12: index):
        %12:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6, %arg7, %arg8, %arg9, %arg10, %arg11, %arg12) : (index, index, index, index, index, index, index) -> (index, index, index)
        "hal.return"(%12#0, %12#1, %12#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "conv_nchw"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x4x66x66xf32>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<320x4x3x3xf32>>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x320x64x64xf32>>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 1, 230, 230, 3>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x4x66x66xf32>>) -> tensor<2x4x66x66xf32>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 7, 7, 3, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<320x4x3x3xf32>>) -> tensor<320x4x3x3xf32>
          %7 = "tensor.empty"() : () -> tensor<2x320x64x64xf32>
          %8 = "linalg.fill"(%1, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32):
            "linalg.yield"(%arg3) : (f32) -> ()
          }) : (f32, tensor<2x320x64x64xf32>) -> tensor<2x320x64x64xf32>
          %9 = "linalg.conv_2d_nchw_fchw"(%5, %6, %8) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : vector<2xi64>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %10 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %11 = "arith.addf"(%arg2, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%11) : (f32) -> ()
          }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<2x4x66x66xf32>, tensor<320x4x3x3xf32>, tensor<2x320x64x64xf32>) -> tensor<2x320x64x64xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%9, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 320, 64, 64>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<2x320x64x64xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x320x64x64xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

