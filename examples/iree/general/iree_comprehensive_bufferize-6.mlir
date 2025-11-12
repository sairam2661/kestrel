#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tile_from_tensor_load_inplace_and_copy"}> ({
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %6 = "hal.interface.binding.subspan"(%3, %5) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %7 = "hal.interface.binding.subspan"(%5, %4) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %8 = "hal.interface.binding.subspan"(%3, %4) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>
    %9 = "hal.interface.binding.subspan"(%3, %4) <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>
    %10 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %11 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    "scf.for"(%11, %0, %0) ({
    ^bb0(%arg0: index):
      "scf.for"(%10, %1, %1) ({
      ^bb0(%arg1: index):
        %12 = "iree_tensor_ext.dispatch.tensor.load"(%6, %3, %5, %arg0) <{operandSegmentSizes = array<i32: 1, 2, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 1, 3>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index) -> tensor<1x3xf32>
        %13 = "iree_tensor_ext.dispatch.tensor.load"(%7, %5, %4, %arg1) <{operandSegmentSizes = array<i32: 1, 2, 1, 0, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 3, 1>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index) -> tensor<3x1xf32>
        %14 = "iree_tensor_ext.dispatch.tensor.load"(%8, %3, %4, %arg0, %arg1) <{operandSegmentSizes = array<i32: 1, 2, 2, 0, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>, index, index, index, index) -> tensor<1x1xf32>
        %15 = "linalg.matmul"(%12, %13, %14) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
          %16 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %17 = "arith.addf"(%arg4, %16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%17) : (f32) -> ()
        }) : (tensor<1x3xf32>, tensor<3x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%15, %8, %3, %4, %arg0, %arg1, %2, %2) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 0, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<1x1xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>, index, index, index, index, index, index) -> ()
        "iree_tensor_ext.dispatch.tensor.store"(%15, %9, %3, %4, %arg0, %arg1, %2, %2) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 0, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: 1, 1>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<1x1xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

