#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb">
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "softmax", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "softmax", sym_visibility = "public"}> ({
      ^bb0(%arg7: !hal.device):
        %15:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%15#0, %15#1, %15#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "softmax"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 786432 : index}> : () -> index
          %3 = "arith.constant"() <{value = 0 : index}> : () -> index
          %4 = "hal.interface.binding.subspan"(%2) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1536x128xf32>>
          %5 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1536x128xf32>>
          %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1536, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1536x128xf32>>) -> tensor<1536x128xf32>
          %7 = "tensor.empty"() : () -> tensor<1536xf32>
          %8 = "linalg.fill"(%0, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg5: f32, %arg6: f32):
            "linalg.yield"(%arg5) : (f32) -> ()
          }) : (f32, tensor<1536xf32>) -> tensor<1536xf32>
          %9 = "linalg.generic"(%6, %8) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32):
            %14 = "arith.addf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%14) : (f32) -> ()
          }) : (tensor<1536x128xf32>, tensor<1536xf32>) -> tensor<1536xf32>
          %10 = "tensor.empty"() : () -> tensor<1536x128xf32>
          %11 = "linalg.generic"(%6, %9, %10) <{indexing_maps = [#map, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
            %12 = "arith.divf"(%1, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %13 = "arith.mulf"(%arg0, %12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%13) : (f32) -> ()
          }) : (tensor<1536x128xf32>, tensor<1536xf32>, tensor<1536x128xf32>) -> tensor<1536x128xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%11, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1536, 128>, static_strides = array<i64: 1, 1>}> : (tensor<1536x128xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1536x128xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

