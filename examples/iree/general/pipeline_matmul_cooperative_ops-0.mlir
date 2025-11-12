#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "matmul_256x1024x128_div_exp", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "matmul_256x1024x128_div_exp", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device, %arg10: index, %arg11: index):
        %22:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg10, %arg11) : (index, index) -> (index, index, index)
        "hal.return"(%22#0, %22#1, %22#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_256x1024x128_div_exp"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 1024 : index}> : () -> index
          %2 = "arith.constant"() <{value = 256 : index}> : () -> index
          %3 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
          %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x1024xf16>>
          %5 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x1024xf16>>
          %6 = "hal.interface.binding.subspan"() <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<256x128xf16>>
          %7 = "hal.interface.binding.subspan"() <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<128x1024xf16>>
          %8 = "hal.interface.binding.subspan"() <{binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x1024xf16>>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x1024xf16>>) -> tensor<256x1024xf16>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 1024>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x1024xf16>>) -> tensor<256x1024xf16>
          %11 = "tensor.empty"() : () -> tensor<256x1024xf16>
          %12 = "iree_tensor_ext.dispatch.tensor.load"(%6) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<256x128xf16>>) -> tensor<256x128xf16>
          %13 = "iree_tensor_ext.dispatch.tensor.load"(%7) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 128, 1204>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<128x1024xf16>>) -> tensor<128x1024xf16>
          %14 = "tensor.empty"() : () -> tensor<256x1024xf16>
          %15 = "linalg.fill"(%3, %14) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f16, %arg8: f16):
            "linalg.yield"(%arg7) : (f16) -> ()
          }) : (f16, tensor<256x1024xf16>) -> tensor<256x1024xf16>
          %16 = "linalg.matmul"(%12, %13, %15) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg4: f16, %arg5: f16, %arg6: f16):
            %20 = "arith.mulf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %21 = "arith.addf"(%arg6, %20) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%21) : (f16) -> ()
          }) : (tensor<256x128xf16>, tensor<128x1024xf16>, tensor<256x1024xf16>) -> tensor<256x1024xf16>
          %17 = "linalg.generic"(%16, %9, %10, %11) <{indexing_maps = [#map3, #map3, #map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f16, %arg3: f16):
            %18 = "arith.divf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %19 = "math.absf"(%18) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
            "linalg.yield"(%19) : (f16) -> ()
          }) : (tensor<256x1024xf16>, tensor<256x1024xf16>, tensor<256x1024xf16>, tensor<256x1024xf16>) -> tensor<256x1024xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%17, %8) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 256, 1024>, static_strides = array<i64: 1, 1>}> : (tensor<256x1024xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<256x1024xf16>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

