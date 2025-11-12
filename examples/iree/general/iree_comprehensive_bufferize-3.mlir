#map = affine_map<()[s0] -> (s0 * 2)>
#map1 = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "rank_reduced_slice"}> ({
    %0 = "arith.constant"() <{value = 10 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1x40xf32>>
    %2 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10xf32>>
    %3 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %4 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %5 = "affine.apply"(%3) <{map = #map}> : (index) -> index
    %6 = "affine.apply"(%4) <{map = #map}> : (index) -> index
    "scf.for"(%5, %0, %6) ({
    ^bb0(%arg0: index):
      %7 = "iree_tensor_ext.dispatch.tensor.load"(%1, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, 2>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1x40xf32>>, index) -> tensor<2xf32>
      %8 = "iree_tensor_ext.dispatch.tensor.load"(%2, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 2>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<10xf32>>, index) -> tensor<2xf32>
      %9 = "linalg.generic"(%7, %8) <{indexing_maps = [#map1, #map1], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
      ^bb0(%arg1: f32, %arg2: f32):
        %10 = "arith.addf"(%arg1, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        "linalg.yield"(%10) : (f32) -> ()
      }) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
      "iree_tensor_ext.dispatch.tensor.store"(%9, %2, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 2>, static_strides = array<i64: 1>}> : (tensor<2xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<10xf32>>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

