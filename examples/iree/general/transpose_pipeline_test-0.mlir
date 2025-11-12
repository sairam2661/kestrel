#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1) -> (d1, d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "transpose_dispatch_0"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "transpose_dispatch_0_generic_4096x4096", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device, %arg3: index, %arg4: index):
        %6:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg3, %arg4) : (index, index) -> (index, index, index)
        "hal.return"(%6#0, %6#1, %6#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "transpose_dispatch_0_generic_4096x4096"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x4096xf32>>
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096x4096xf32>>
          %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 4096>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x4096xf32>>) -> tensor<4096x4096xf32>
          %4 = "tensor.empty"() : () -> tensor<4096x4096xf32>
          %5 = "linalg.generic"(%3, %4) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32):
            "linalg.yield"(%arg0) : (f32) -> ()
          }) : (tensor<4096x4096xf32>, tensor<4096x4096xf32>) -> tensor<4096x4096xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%5, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 4096>, static_strides = array<i64: 1, 1>}> : (tensor<4096x4096xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096x4096xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

