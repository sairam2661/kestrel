#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "fuse_and_vectorize_matmul_add", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "fuse_and_vectorize_matmul_add", sym_visibility = "public"}> ({
      ^bb0(%arg8: !hal.device, %arg9: index, %arg10: index):
        %19:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg9, %arg10) : (index, index) -> (index, index, index)
        "hal.return"(%19#0, %19#1, %19#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "fuse_and_vectorize_matmul_add"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 1024 : index}> : () -> index
          %3 = "arith.constant"() <{value = 256 : index}> : () -> index
          %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x256xf32>>
          %5 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xf32>>
          %6 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<512x256xf32>>
          %7 = "hal.interface.binding.subspan"() <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x256xf32>>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x256xf32>>) -> tensor<1024x256xf32>
          %9 = "tensor.empty"() : () -> tensor<1024x256xf32>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 512>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1024x512xf32>>) -> tensor<1024x512xf32>
          %11 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 512, 256>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<512x256xf32>>) -> tensor<512x256xf32>
          %12 = "tensor.empty"() : () -> tensor<1024x256xf32>
          %13 = "linalg.fill"(%1, %12) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg6: f32, %arg7: f32):
            "linalg.yield"(%arg6) : (f32) -> ()
          }) : (f32, tensor<1024x256xf32>) -> tensor<1024x256xf32>
          %14 = "linalg.matmul"(%10, %11, %13) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
            %17 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %18 = "arith.addf"(%arg5, %17) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%18) : (f32) -> ()
          }) : (tensor<1024x512xf32>, tensor<512x256xf32>, tensor<1024x256xf32>) -> tensor<1024x256xf32>
          %15 = "linalg.generic"(%14, %8, %9) <{indexing_maps = [#map3, #map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %16 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%16) : (f32) -> ()
          }) : (tensor<1024x256xf32>, tensor<1024x256xf32>, tensor<1024x256xf32>) -> tensor<1024x256xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%15, %7) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1024, 256>, static_strides = array<i64: 1, 1>}> : (tensor<1024x256xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1024x256xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

