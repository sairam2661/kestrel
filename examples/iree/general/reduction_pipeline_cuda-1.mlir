#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "warp_reduction_broadcast_dispatch"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "warp_reduction_broadcast_dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg6: !hal.device, %arg7: index, %arg8: index):
        %14:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg7, %arg8) : (index, index) -> (index, index, index)
        "hal.return"(%14#0, %14#1, %14#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "warp_reduction_broadcast_dispatch"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 10240 : index}> : () -> index
          %2 = "arith.constant"() <{value = 3.840000e+02 : f32}> : () -> f32
          %3 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
          %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x10240xf32>>
          %5 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x10240xf32>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<512x10240xf32>>) -> tensor<512x10240xf32>
          %7 = "tensor.empty"() : () -> tensor<512xf32>
          %8 = "linalg.fill"(%3, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg4: f32, %arg5: f32):
            "linalg.yield"(%arg4) : (f32) -> ()
          }) : (f32, tensor<512xf32>) -> tensor<512xf32>
          %9 = "linalg.generic"(%6, %8) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg2: f32, %arg3: f32):
            %13 = "arith.addf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%13) : (f32) -> ()
          }) : (tensor<512x10240xf32>, tensor<512xf32>) -> tensor<512xf32>
          %10 = "tensor.empty"() : () -> tensor<512x10240xf32>
          %11 = "linalg.generic"(%9, %10) <{indexing_maps = [#map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32):
            %12 = "arith.divf"(%arg0, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%12) : (f32) -> ()
          }) : (tensor<512xf32>, tensor<512x10240xf32>) -> tensor<512x10240xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%11, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 10240>, static_strides = array<i64: 1, 1>}> : (tensor<512x10240xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512x10240xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

