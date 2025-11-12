#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
#map1 = affine_map<(d0)[s0, s1] -> (-d0 + s1, s0)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 6, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "bufferize_dynamic_inplace"}> ({
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
    %7 = "hal.interface.binding.subspan"(%1, %2) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %8 = "hal.interface.binding.subspan"(%3, %4) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %9 = "hal.interface.binding.subspan"(%5, %6) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>
    %10 = "hal.interface.workgroup.size"() <{dimension = 0 : index}> : () -> index
    %11 = "hal.interface.workgroup.size"() <{dimension = 1 : index}> : () -> index
    %12 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %13 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %14 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %15 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %16 = "arith.muli"(%11, %14) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %17 = "arith.muli"(%11, %15) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "scf.for"(%16, %1, %17) ({
    ^bb0(%arg0: index):
      %18 = "arith.muli"(%10, %12) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %19 = "arith.muli"(%10, %13) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "scf.for"(%18, %4, %19) ({
      ^bb0(%arg1: index):
        %20 = "affine.min"(%arg0, %1, %11) <{map = #map}> : (index, index, index) -> index
        %21 = "iree_tensor_ext.dispatch.tensor.load"(%7, %1, %2, %arg0, %20, %2) <{operandSegmentSizes = array<i32: 1, 2, 1, 2, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index, index) -> tensor<?x?xf32>
        %22 = "affine.min"(%arg1, %4, %10) <{map = #map}> : (index, index, index) -> index
        %23 = "iree_tensor_ext.dispatch.tensor.load"(%8, %3, %4, %arg1, %3, %22) <{operandSegmentSizes = array<i32: 1, 2, 1, 2, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index, index) -> tensor<?x?xf32>
        %24 = "affine.min"(%arg0, %11, %5) <{map = #map1}> : (index, index, index) -> index
        %25 = "affine.min"(%arg1, %10, %6) <{map = #map1}> : (index, index, index) -> index
        %26 = "iree_tensor_ext.dispatch.tensor.load"(%9, %5, %6, %arg0, %arg1, %24, %25) <{operandSegmentSizes = array<i32: 1, 2, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?xf32>
        %27 = "linalg.matmul"(%21, %23, %26) <{indexing_maps = [#map2, #map3, #map4], operandSegmentSizes = array<i32: 2, 1>}> ({
        ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
          %28 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %29 = "arith.addf"(%arg4, %28) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%29) : (f32) -> ()
        }) : (tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
        "iree_tensor_ext.dispatch.tensor.store"(%27, %9, %5, %6, %arg0, %arg1, %24, %25, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x?xf32>>, index, index, index, index, index, index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

