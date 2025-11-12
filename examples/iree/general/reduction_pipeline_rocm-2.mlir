#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "i4_dequant_matvec", sym_visibility = "private"}> ({
    "hal.executable.variant"() <{sym_name = "rocm_hsaco_fb", sym_visibility = "public", target = #executable_target_rocm_hsaco_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "i4_dequant_matvec", sym_visibility = "public"}> ({
      ^bb0(%arg9: !hal.device):
        %22:3 = "iree_tensor_ext.dispatch.workgroup_count_from_slice"() : () -> (index, index, index)
        "hal.return"(%22#0, %22#1, %22#2) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "i4_dequant_matvec"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x128xi4>>
          %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32xf16>>
          %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32xf16>>
          %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 3 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<32x128xf16>>
          %6 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 4 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096xf16>>
          %7 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 4096, 32, 128>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32x128xi4>>) -> tensor<4096x32x128xi4>
          %8 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32xf16>>) -> tensor<4096x32xf16>
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 4096, 32>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x32xf16>>) -> tensor<4096x32xf16>
          %10 = "iree_tensor_ext.dispatch.tensor.load"(%5) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 32, 128>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<32x128xf16>>) -> tensor<32x128xf16>
          %11 = "tensor.empty"() : () -> tensor<4096xf16>
          %12 = "tensor.empty"() : () -> tensor<4096x32x128xf16>
          %13 = "linalg.fill"(%1, %11) <{operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg7: f16, %arg8: f16):
            "linalg.yield"(%arg7) : (f16) -> ()
          }) : (f16, tensor<4096xf16>) -> tensor<4096xf16>
          %14 = "linalg.generic"(%7, %8, %9, %12) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
          ^bb0(%arg3: i4, %arg4: f16, %arg5: f16, %arg6: f16):
            %18 = "arith.extui"(%arg3) : (i4) -> i32
            %19 = "arith.uitofp"(%18) : (i32) -> f16
            %20 = "arith.subf"(%19, %arg5) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %21 = "arith.mulf"(%20, %arg4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%21) : (f16) -> ()
          }) : (tensor<4096x32x128xi4>, tensor<4096x32xf16>, tensor<4096x32xf16>, tensor<4096x32x128xf16>) -> tensor<4096x32x128xf16>
          %15 = "linalg.generic"(%10, %14, %13) <{indexing_maps = [#map2, #map, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
          ^bb0(%arg0: f16, %arg1: f16, %arg2: f16):
            %16 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            %17 = "arith.addf"(%16, %arg2) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
            "linalg.yield"(%17) : (f16) -> ()
          }) : (tensor<32x128xf16>, tensor<4096x32x128xf16>, tensor<4096xf16>) -> tensor<4096xf16>
          "iree_tensor_ext.dispatch.tensor.store"(%15, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4096>, static_strides = array<i64: 1>}> : (tensor<4096xf16>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096xf16>>) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

