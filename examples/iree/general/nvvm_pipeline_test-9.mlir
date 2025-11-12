#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "vector_distribute_dispatch"}> ({
    "hal.executable.variant"() <{sym_name = "cuda", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "vector_distribute_dispatch", sym_visibility = "public"}> ({
      ^bb0(%arg4: !hal.device, %arg5: index, %arg6: index):
        %10:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg5, %arg6) : (index, index) -> (index, index, index)
        "hal.return"(%10#0, %10#1, %10#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "vector_distribute_dispatch"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 1024 : index}> : () -> index
          %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
          %3 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x1024xf32>>
          %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512xf32>>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<512x1024xf32>>) -> tensor<512x1024xf32>
          %6 = "tensor.empty"() : () -> tensor<512xf32>
          %7 = "linalg.fill"(%2, %6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg2: f32, %arg3: f32):
            "linalg.yield"(%arg2) : (f32) -> ()
          }) : (f32, tensor<512xf32>) -> tensor<512xf32>
          %8 = "linalg.generic"(%5, %7) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32):
            %9 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%9) : (f32) -> ()
          }) : (tensor<512x1024xf32>, tensor<512xf32>) -> tensor<512xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%8, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 512>, static_strides = array<i64: 1>}> : (tensor<512xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<512xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

