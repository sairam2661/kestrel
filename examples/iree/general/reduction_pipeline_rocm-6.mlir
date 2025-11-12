#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "multi_reduction", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "multi_reduction", sym_visibility = "public"}> ({
      ^bb0(%arg15: !hal.device):
        %28:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%28#0, %28#1, %28#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "multi_reduction"}> ({
          %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
          %1 = "arith.constant"() <{value = 2.304000e+05 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 9.99999974E-6 : f32}> : () -> f32
          %3 = "arith.constant"() <{value = 85483008 : index}> : () -> index
          %4 = "arith.constant"() <{value = 165416448 : index}> : () -> index
          %5 = "hal.interface.binding.subspan"(%3) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x60x3840xf16>>
          %6 = "hal.interface.binding.subspan"(%4) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x32x60x3840xf32>>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 32, 60, 3840>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x32x60x3840xf16>>) -> tensor<2x32x60x3840xf16>
          %8 = "tensor.empty"() : () -> tensor<2x32x60x3840xf32>
          %9 = "tensor.empty"() : () -> tensor<2x32xf32>
          %10 = "linalg.generic"(%7, %8) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg13: f16, %arg14: f32):
            %27 = "arith.extf"(%arg13) : (f16) -> f32
            "linalg.yield"(%27) : (f32) -> ()
          }) : (tensor<2x32x60x3840xf16>, tensor<2x32x60x3840xf32>) -> tensor<2x32x60x3840xf32>
          %11 = "linalg.fill"(%0, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg11: f32, %arg12: f32):
            "linalg.yield"(%arg11) : (f32) -> ()
          }) : (f32, tensor<2x32xf32>) -> tensor<2x32xf32>
          %12 = "linalg.generic"(%10, %11) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg9: f32, %arg10: f32):
            %26 = "arith.addf"(%arg9, %arg10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%26) : (f32) -> ()
          }) : (tensor<2x32x60x3840xf32>, tensor<2x32xf32>) -> tensor<2x32xf32>
          %13 = "linalg.generic"(%12, %9) <{indexing_maps = [#map2, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f32, %arg8: f32):
            %25 = "arith.divf"(%arg7, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%25) : (f32) -> ()
          }) : (tensor<2x32xf32>, tensor<2x32xf32>) -> tensor<2x32xf32>
          %14 = "linalg.generic"(%10, %13, %11) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg4: f32, %arg5: f32, %arg6: f32):
            %22 = "arith.subf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %23 = "arith.mulf"(%22, %22) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %24 = "arith.addf"(%23, %arg6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%24) : (f32) -> ()
          }) : (tensor<2x32x60x3840xf32>, tensor<2x32xf32>, tensor<2x32xf32>) -> tensor<2x32xf32>
          %15 = "linalg.generic"(%7, %13, %14, %8) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f32, %arg2: f32, %arg3: f32):
            %16 = "arith.divf"(%arg2, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %17 = "arith.addf"(%16, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %18 = "math.rsqrt"(%17) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
            %19 = "arith.extf"(%arg0) : (f16) -> f32
            %20 = "arith.subf"(%19, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %21 = "arith.mulf"(%20, %18) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%21) : (f32) -> ()
          }) : (tensor<2x32x60x3840xf16>, tensor<2x32xf32>, tensor<2x32xf32>, tensor<2x32x60x3840xf32>) -> tensor<2x32x60x3840xf32>
          "iree_tensor_ext.dispatch.tensor.store"(%15, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 2, 32, 60, 3840>, static_strides = array<i64: 1, 1, 1, 1>}> : (tensor<2x32x60x3840xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<2x32x60x3840xf32>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

