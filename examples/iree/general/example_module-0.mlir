#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.3,cap:Shader", wgp = <compute =  fp32|int32, storage =  b32, subgroup =  none, subgroup_size_choices = [64, 64], max_workgroup_sizes = [128, 128, 64], max_thread_count_per_workgroup = 128, max_workgroup_memory_bytes = 16384, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer>]>
#device_target_vulkan = #hal.device.target<"vulkan", [#executable_target_vulkan_spirv_fb]> : !hal.device
"builtin.module"() ({
  "hal.executable"() <{sym_name = "example_module_dispatch_0", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "example_module_dispatch_0_generic_80_f32", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device):
        %26:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%26#0, %26#1, %26#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "example_module_dispatch_0_generic_80_f32"}> ({
          %19 = "arith.constant"() <{value = 0 : index}> : () -> index
          %20 = "hal.interface.binding.subspan"(%19) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<80xf32>>
          %21 = "hal.interface.binding.subspan"(%19) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<80xf32>>
          %22 = "iree_tensor_ext.dispatch.tensor.load"(%20) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 80>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<80xf32>>) -> tensor<80xf32>
          %23 = "tensor.empty"() : () -> tensor<80xf32>
          %24 = "linalg.generic"(%22, %23) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f32, %arg8: f32):
            %25 = "arith.addf"(%arg7, %arg7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%25) : (f32) -> ()
          }) : (tensor<80xf32>, tensor<80xf32>) -> tensor<80xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%24, %21) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 80>, static_strides = array<i64: 1>}> : (tensor<80xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<80xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "example_module_dispatch_1", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout1, ordinal = 0 : index, sym_name = "example_module_dispatch_1_matmul_16x16x5_f32", sym_visibility = "public"}> ({
      ^bb0(%arg6: !hal.device):
        %18:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%18#0, %18#1, %18#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "example_module_dispatch_1_matmul_16x16x5_f32"}> ({
          %8 = "arith.constant"() <{value = 0 : index}> : () -> index
          %9 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x5xf32>>
          %10 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<5x16xf32>>
          %11 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<16x16xf32>>
          %12 = "iree_tensor_ext.dispatch.tensor.load"(%9) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 16, 5>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16x5xf32>>) -> tensor<16x5xf32>
          %13 = "iree_tensor_ext.dispatch.tensor.load"(%10) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 5, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<5x16xf32>>) -> tensor<5x16xf32>
          %14 = "iree_tensor_ext.dispatch.tensor.load"(%11) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 16, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<16x16xf32>>) -> tensor<16x16xf32>
          %15 = "linalg.generic"(%12, %13, %14) <{indexing_maps = [#map1, #map2, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
            %16 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %17 = "arith.addf"(%arg5, %16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%17) : (f32) -> ()
          }) : (tensor<16x5xf32>, tensor<5x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%15, %11) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 16, 16>, static_strides = array<i64: 1, 1>}> : (tensor<16x16xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<16x16xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
  "hal.executable"() <{sym_name = "example_module_dispatch_2", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", sym_visibility = "public", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "example_module_dispatch_2_generic_16x16_f32", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device):
        %7:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%7#0, %7#1, %7#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "example_module_dispatch_2_generic_16x16_f32"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16xf32>>
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>
          %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 16, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16x16xf32>>) -> tensor<16x16xf32>
          %4 = "tensor.empty"() : () -> tensor<16xf32>
          %5 = "linalg.generic"(%3, %4) <{indexing_maps = [#map4, #map5], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32):
            %6 = "arith.addf"(%arg1, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%6) : (f32) -> ()
          }) : (tensor<16x16xf32>, tensor<16xf32>) -> tensor<16xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%5, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 16>, static_strides = array<i64: 1>}> : (tensor<16xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) {hal.device.targets = [#device_target_vulkan]} : () -> ()

