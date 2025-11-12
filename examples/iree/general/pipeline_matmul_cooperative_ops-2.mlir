#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "matmul_32x32x32_div", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "matmul_32x32x32_div", sym_visibility = "public"}> ({
      ^bb0(%arg8: !hal.device, %arg9: index, %arg10: index):
        %16:3 = "iree_tensor_ext.dispatch.workgroup_count_from_dag_root"(%arg9, %arg10) : (index, index) -> (index, index, index)
        "hal.return"(%16#0, %16#1, %16#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "matmul_32x32x32_div"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf16>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf16>>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf16>>
          %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x32xf16>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf16>>) -> tensor<32x32xf16>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf16>>) -> tensor<32x32xf16>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x32xf16>>) -> tensor<32x32xf16>
          %9 = "tensor.empty"() : () -> tensor<32x32xf16>
          %10 = "linalg.fill"(%1, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg6: f16, %arg7: f16):
            "linalg.yield"(%arg6) : (f16) -> ()
          }) : (f16, tensor<32x32xf16>) -> tensor<32x32xf16>
          %11 = "linalg.matmul"(%6, %7, %10) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg3: f16, %arg4: f16, %arg5: f16):
            %14 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %15 = "arith.addf"(%arg5, %14) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%15) : (f16) -> ()
          }) : (tensor<32x32xf16>, tensor<32x32xf16>, tensor<32x32xf16>) -> tensor<32x32xf16>
          %12 = "linalg.generic"(%11, %8, %9) <{indexing_maps = [#map3, #map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
            %13 = "arith.divf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%13) : (f16) -> ()
          }) : (tensor<32x32xf16>, tensor<32x32xf16>, tensor<32x32xf16>) -> tensor<32x32xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%12, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 32>, static_strides = array<i64: 1, 1>}> : (tensor<32x32xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x32xf16>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

