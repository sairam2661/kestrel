#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<()[s0] -> (32, s0 * -32 + 4096)>
#map1 = affine_map<()[s0] -> (s0 * 32)>
#map2 = affine_map<(d0, d1) -> (d1, d0)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "hal.executable"() <{sym_name = "generic_static", sym_visibility = "public"}> ({
    "hal.executable.variant"() <{sym_name = "cuda_nvptx_fb", sym_visibility = "public", target = #executable_target_cuda_nvptx_fb}> ({
      "hal.executable.export"() <{layout = #pipeline_layout, ordinal = 0 : index, sym_name = "generic_static", sym_visibility = "public"}> ({
      ^bb0(%arg2: !hal.device, %arg3: index, %arg4: index):
        %14 = "arith.constant"() <{value = 128 : index}> : () -> index
        %15 = "arith.constant"() <{value = 1 : index}> : () -> index
        "hal.return"(%14, %14, %15) : (index, index, index) -> ()
      }, {
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "generic_static"}> ({
          %0 = "arith.constant"() <{value = 0 : index}> : () -> index
          %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x4096xf32>>
          %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096x4096xf32>>
          %3 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
          %4 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
          %5 = "affine.min"(%4) <{map = #map}> : (index) -> index
          %6 = "affine.min"(%3) <{map = #map}> : (index) -> index
          %7 = "affine.apply"(%3) <{map = #map1}> : (index) -> index
          %8 = "affine.apply"(%4) <{map = #map1}> : (index) -> index
          %9 = "iree_tensor_ext.dispatch.tensor.load"(%1, %7, %8, %6, %5) <{operandSegmentSizes = array<i32: 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4096x4096xf32>>, index, index, index, index) -> tensor<?x?xf32>
          %10 = "tensor.empty"(%5, %6) : (index, index) -> tensor<?x?xf32>
          %11 = "linalg.generic"(%9, %10) <{indexing_maps = [#map2, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
          ^bb0(%arg0: f32, %arg1: f32):
            "linalg.yield"(%arg0) : (f32) -> ()
          }) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
          %12 = "affine.apply"(%4) <{map = #map1}> : (index) -> index
          %13 = "affine.apply"(%3) <{map = #map1}> : (index) -> index
          "iree_tensor_ext.dispatch.tensor.store"(%11, %2, %12, %13, %5, %6) <{operandSegmentSizes = array<i32: 1, 1, 0, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4096x4096xf32>>, index, index, index, index) -> ()
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

