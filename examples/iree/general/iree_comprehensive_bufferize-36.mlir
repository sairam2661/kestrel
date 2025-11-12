#map = affine_map<(d0)[s0, s1] -> (-d0 + s0, s1)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 10, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multi_result"}> ({
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> index
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 7 : index}> : () -> index
    %9 = "hal.interface.binding.subspan"(%1, %2) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %10 = "hal.interface.binding.subspan"(%3, %4) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %11 = "hal.interface.binding.subspan"(%5, %6) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>
    %12 = "hal.interface.binding.subspan"(%7, %8) <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>
    %13 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 8 : index}> : () -> index
    %14 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 9 : index}> : () -> index
    %15 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %16 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %17 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %18 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %19 = "hal.interface.workgroup.size"() <{dimension = 0 : index}> : () -> index
    %20 = "hal.interface.workgroup.size"() <{dimension = 1 : index}> : () -> index
    %21 = "arith.muli"(%16, %20) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %22 = "arith.muli"(%18, %20) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %23 = "arith.muli"(%15, %19) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %24 = "arith.muli"(%17, %19) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "scf.for"(%21, %13, %22) ({
    ^bb0(%arg0: index):
      "scf.for"(%23, %14, %24) ({
      ^bb0(%arg1: index):
        %25 = "affine.min"(%arg0, %13, %20) <{map = #map}> : (index, index, index) -> index
        %26 = "affine.min"(%arg1, %14, %19) <{map = #map}> : (index, index, index) -> index
        %27 = "iree_tensor_ext.dispatch.tensor.load"(%12, %7, %8, %arg0, %arg1, %25, %26) <{operandSegmentSizes = array<i32: 1, 2, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?xf32>
        %28 = "iree_tensor_ext.dispatch.tensor.load"(%11, %5, %6, %arg0, %arg1, %25, %26) <{operandSegmentSizes = array<i32: 1, 2, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?xf32>
        %29 = "iree_tensor_ext.dispatch.tensor.load"(%9, %1, %2, %arg0, %arg1, %25, %26) <{operandSegmentSizes = array<i32: 1, 2, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?xf32>
        %30 = "iree_tensor_ext.dispatch.tensor.load"(%10, %3, %4, %arg0, %arg1, %25, %26) <{operandSegmentSizes = array<i32: 1, 2, 2, 2, 0>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index, index, index) -> tensor<?x?xf32>
        %31:2 = "linalg.generic"(%29, %30, %28, %27) <{indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 2>}> ({
        ^bb0(%arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32):
          %32 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %33 = "arith.addf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%32, %33) : (f32, f32) -> ()
        }) : (tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>)
        "iree_tensor_ext.dispatch.tensor.store"(%31#0, %11, %5, %6, %arg0, %arg1, %25, %26, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index, index, index, index, index) -> ()
        "iree_tensor_ext.dispatch.tensor.store"(%31#1, %12, %7, %8, %arg0, %arg1, %25, %26, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index, index, index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

