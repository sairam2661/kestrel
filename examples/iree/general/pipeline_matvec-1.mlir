#executable_target_vulkan_spirv_fb = #hal.executable.target<"vulkan-spirv", "vulkan-spirv-fb", {iree_codegen.target_info = #iree_gpu.target<arch = "", features = "spirv:v1.6,cap:Shader", wgp = <compute =  fp32|fp16|int32, storage =  b32|b16, subgroup =  shuffle|arithmetic, subgroup_size_choices = [64], max_workgroup_sizes = [1024, 1024, 1024], max_thread_count_per_workgroup = 1024, max_workgroup_memory_bytes = 65536, max_workgroup_counts = [65535, 65535, 65535]>>}>
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 5, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "i4_dequant_matvec_f16_subgroup_64"}> ({
    "hal.executable.variant"() <{sym_name = "vulkan_spirv_fb", target = #executable_target_vulkan_spirv_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "i4_dequant_matvec_f16_subgroup_64", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device):
        %31:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%31#0, %31#1, %31#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "i4_dequant_matvec_f16_subgroup_64"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
          %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> i32
          %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> i32
          %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> i32
          %6 = "arith.index_castui"(%1) : (i32) -> index
          %7 = "arith.index_castui"(%2) : (i32) -> index
          %8 = "arith.index_castui"(%3) : (i32) -> index
          %9 = "arith.index_castui"(%4) : (i32) -> index
          %10 = "arith.index_castui"(%5) : (i32) -> index
          %11 = "hal.interface.binding.subspan"(%6) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86x128xi4>>
          %12 = "hal.interface.binding.subspan"(%7) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf16>>
          %13 = "hal.interface.binding.subspan"(%8) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf16>>
          %14 = "hal.interface.binding.subspan"(%9) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<86x128xf16>>
          %15 = "hal.interface.binding.subspan"(%10) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096xf16>>
          %16 = "iree_tensor_ext.dispatch.tensor.load"(%11) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 4096, 86, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86x128xi4>>) -> tensor<4096x86x128xi4>
          %17 = "iree_tensor_ext.dispatch.tensor.load"(%12) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 86>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf16>>) -> tensor<4096x86xf16>
          %18 = "iree_tensor_ext.dispatch.tensor.load"(%13) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 86>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x86xf16>>) -> tensor<4096x86xf16>
          %19 = "iree_tensor_ext.dispatch.tensor.load"(%14) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 86, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<86x128xf16>>) -> tensor<86x128xf16>
          %20 = "tensor.empty"() : () -> tensor<4096xf16>
          %21 = "tensor.empty"() : () -> tensor<4096x86x128xf16>
          %22 = "linalg.fill"(%0, %20) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f16, %arg8: f16):
            "linalg.yield"(%arg7) : (f16) -> ()
          }) : (f16, tensor<4096xf16>) -> tensor<4096xf16>
          %23 = "linalg.generic"(%16, %17, %18, %21) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
          ^bb0(%arg3: i4, %arg4: f16, %arg5: f16, %arg6: f16):
            %27 = "arith.extui"(%arg3) : (i4) -> i32
            %28 = "arith.uitofp"(%27) : (i32) -> f16
            %29 = "arith.subf"(%28, %arg5) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %30 = "arith.mulf"(%29, %arg4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%30) : (f16) -> ()
          }) : (tensor<4096x86x128xi4>, tensor<4096x86xf16>, tensor<4096x86xf16>, tensor<4096x86x128xf16>) -> tensor<4096x86x128xf16>
          %24 = "linalg.generic"(%19, %23, %22) <{indexing_maps = [#map2, #map, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
            %25 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %26 = "arith.addf"(%25, %arg2) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%26) : (f16) -> ()
          }) : (tensor<86x128xf16>, tensor<4096x86x128xf16>, tensor<4096xf16>) -> tensor<4096xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%24, %15) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4096>, static_strides = array<i64: 1>}> : (tensor<4096xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096xf16>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

