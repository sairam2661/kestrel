#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "fp4_dynamic_quantt"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, sym_name = "fp4_dynamic_quant", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device, %arg10: index):
        %23:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"(%arg10) : (index) -> (index, index, index)
        "hal.return"(%23#0, %23#1, %23#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "fp4_dynamic_quant"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 2.500000e-01 : f32}> : () -> f32
          %2 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
          %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
          %4 = "arith.index_castui"(%3) : (i32) -> index
          %5 = "hal.interface.binding.subspan"(%0, %4) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>
          %6 = "hal.interface.binding.subspan"(%0, %4) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf4E2M1FN>>
          %7 = "hal.interface.binding.subspan"(%0, %4) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%5, %4, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x32xf32>>, index, index) -> tensor<?x32xf32>
          %9 = "tensor.empty"(%4) : (index) -> tensor<?xf32>
          %10 = "linalg.fill"(%2, %9) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f32, %arg8: f32):
            "linalg.yield"(%arg7) : (f32) -> ()
          }) : (f32, tensor<?xf32>) -> tensor<?xf32>
          %11 = "linalg.generic"(%8, %10) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg5: f32, %arg6: f32):
            %21 = "math.absf"(%arg5) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
            %22 = "arith.maximumf"(%21, %arg6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            "linalg.yield"(%22) : (f32) -> ()
          }) : (tensor<?x32xf32>, tensor<?xf32>) -> tensor<?xf32>
          %12 = "tensor.empty"(%4) : (index) -> tensor<?xi8>
          %13 = "linalg.generic"(%11, %12) <{indexing_maps = [#map2, #map2], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg3: f32, %arg4: i8):
            %18 = "arith.mulf"(%arg3, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %19 = "arith.truncf"(%18) : (f32) -> f8E8M0FNU
            %20 = "arith.bitcast"(%19) : (f8E8M0FNU) -> i8
            "linalg.yield"(%20) : (i8) -> ()
          }) : (tensor<?xf32>, tensor<?xi8>) -> tensor<?xi8>
          %14 = "tensor.empty"(%4) : (index) -> tensor<?x32xf4E2M1FN>
          %15 = "linalg.generic"(%8, %11, %14) <{indexing_maps = [#map, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32, %arg2: f4E2M1FN):
            %16 = "arith.mulf"(%arg1, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
            %17 = "arith.scaling_truncf"(%arg0, %16) : (f32, f32) -> f4E2M1FN
            "linalg.yield"(%17) : (f4E2M1FN) -> ()
          }) : (tensor<?x32xf32>, tensor<?xf32>, tensor<?x32xf4E2M1FN>) -> tensor<?x32xf4E2M1FN>
          "iree_tensor_ext.dispatch.tensor.store"(%13, %7, %4, %4) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>, index, index) -> ()
          "iree_tensor_ext.dispatch.tensor.store"(%15, %6, %4, %4) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 32>, static_strides = array<i64: 1, 1>}> : (tensor<?x32xf4E2M1FN>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x32xf4E2M1FN>>, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

