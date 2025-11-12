#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "transpose_3d_trans_out_dispatch_0_generic_10x2048x768"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "transpose_3d_trans_out_dispatch_0_generic_10x2048x768", sym_visibility = "public"}> ({
      ^bb0(%arg3: !hal.device, %arg4: index, %arg5: index, %arg6: index):
        %9:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg4, %arg5, %arg6) : (index, index, index) -> (index, index, index)
        "hal.return"(%9#0, %9#1, %9#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "transpose_3d_trans_out_dispatch_0_generic_10x2048x768"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10x768x2048xf32>>
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<10x768x2048xf32>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10x2048x768xf32>>
          %4 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 10, 768, 2048>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10x768x2048xf32>>) -> tensor<10x768x2048xf32>
          %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 10, 768, 2048>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<10x768x2048xf32>>) -> tensor<10x768x2048xf32>
          %6 = "tensor.empty"() : () -> tensor<10x2048x768xf32>
          %7 = "linalg.generic"(%4, %5, %6) <{indexing_maps = [#map, #map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %8 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%8) : (f32) -> ()
          }) : (tensor<10x768x2048xf32>, tensor<10x768x2048xf32>, tensor<10x2048x768xf32>) -> tensor<10x2048x768xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%7, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 10, 2048, 768>, static_strides = array<i64: 1, 1, 1>}> : (tensor<10x2048x768xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10x2048x768xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

