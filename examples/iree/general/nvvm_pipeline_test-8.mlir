#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2 + d4, d3 + d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "pooling_dynamic", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "pooling_dynamic", sym_visibility = "public"}> ({
      ^bb0(%arg5: !hal.device, %arg6: index, %arg7: index, %arg8: index, %arg9: index, %arg10: index, %arg11: index):
        %13:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg6, %arg7, %arg8, %arg9, %arg10, %arg11) : (index, index, index, index, index, index) -> (index, index, index)
        "hal.return"(%13#0, %13#1, %13#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "pooling_dynamic"}> ({
          %0 = "arith.constant"() <{value = 1 : i64}> : () -> i64
          %1 = "arith.constant"() <{value = 2 : i64}> : () -> i64
          %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %4 = "arith.index_cast"(%3) : (i32) -> index
          %5 = "hal.interface.binding.subspan"(%4, %4, %4, %4) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 3>}> : (index, index, index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x2048x?x?xf32>>
          %6 = "hal.interface.binding.subspan"(%4, %4) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x2048x1x1xf32>>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%5, %4, %4, %4, %4, %4, %4) <{operandSegmentSizes = array<i32: 1, 3, 0, 3, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 2048, -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x2048x?x?xf32>>, index, index, index, index, index, index) -> tensor<?x2048x?x?xf32>
          %8 = "tensor.empty"(%4) : (index) -> tensor<?x2048x1x1xf32>
          %9 = "tensor.empty"(%4, %4) : (index, index) -> tensor<?x?xf32>
          %10 = "linalg.fill"(%2, %8) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32):
            "linalg.yield"(%arg3) : (f32) -> ()
          }) : (f32, tensor<?x2048x1x1xf32>) -> tensor<?x2048x1x1xf32>
          %11 = "linalg.pooling_nchw_sum"(%7, %9, %10) <{dilations = dense<1> : vector<2xi64>, operandSegmentSizes = array<i32: 2, 1>, strides = dense<1> : vector<2xi64>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %12 = "arith.addf"(%arg2, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%12) : (f32) -> ()
          }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<?x2048x?x?xf32>, tensor<?x?xf32>, tensor<?x2048x1x1xf32>) -> tensor<?x2048x1x1xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%11, %6, %4, %4) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 2048, 1, 1>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<?x2048x1x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x2048x1x1xf32>>, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

