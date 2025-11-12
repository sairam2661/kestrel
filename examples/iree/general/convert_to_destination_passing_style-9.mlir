#map = affine_map<(d0)[s0, s1] -> (s1, -d0 + s0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#pipeline_layout = #hal.pipeline.layout<constants = 12, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multi_result"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %6 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %7 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %8 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 3 : index}> : () -> index
    %9 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 4 : index}> : () -> index
    %10 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 5 : index}> : () -> index
    %11 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 6 : index}> : () -> index
    %12 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 7 : index}> : () -> index
    %13 = "hal.interface.binding.subspan"(%5, %6) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %14 = "hal.interface.binding.subspan"(%7, %8) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>
    %15 = "hal.interface.binding.subspan"(%9, %10) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>
    %16 = "hal.interface.binding.subspan"(%11, %12) <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>
    %17 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 8 : index}> : () -> index
    %18 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 9 : index}> : () -> index
    %19 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 10 : index}> : () -> index
    %20 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 11 : index}> : () -> index
    %21 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %22 = "hal.interface.workgroup.id"() <{dimension = 1 : index}> : () -> index
    %23 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %24 = "hal.interface.workgroup.count"() <{dimension = 1 : index}> : () -> index
    %25 = "hal.interface.workgroup.size"() <{dimension = 0 : index}> : () -> index
    %26 = "hal.interface.workgroup.size"() <{dimension = 1 : index}> : () -> index
    %27 = "arith.muli"(%22, %26) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %28 = "arith.muli"(%24, %26) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %29 = "arith.muli"(%21, %25) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %30 = "arith.muli"(%23, %25) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "scf.for"(%27, %17, %28) ({
    ^bb0(%arg0: index):
      "scf.for"(%29, %18, %30) ({
      ^bb0(%arg1: index):
        %31 = "affine.min"(%arg0, %17, %26) <{map = #map}> : (index, index, index) -> index
        %32 = "affine.min"(%arg1, %18, %25) <{map = #map}> : (index, index, index) -> index
        %33 = "iree_tensor_ext.dispatch.tensor.load"(%13, %5, %6, %arg0, %arg1, %31, %32, %3, %3) <{operandSegmentSizes = array<i32: 1, 2, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<?x?xf32>
        %34 = "iree_tensor_ext.dispatch.tensor.load"(%14, %7, %8, %arg0, %arg1, %31, %32, %3, %3) <{operandSegmentSizes = array<i32: 1, 2, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xf32>>, index, index, index, index, index, index, index, index) -> tensor<?x?xf32>
        %35 = "tensor.empty"(%31, %32) : (index, index) -> tensor<?x?xf32>
        %36:2 = "linalg.generic"(%33, %34, %35, %35) <{indexing_maps = [#map1, #map1, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 2>}> ({
        ^bb0(%arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32):
          %37 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          %38 = "arith.addf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
          "linalg.yield"(%37, %38) : (f32, f32) -> ()
        }) : (tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>)
        "iree_tensor_ext.dispatch.tensor.store"(%36#0, %15, %9, %10, %arg0, %arg1, %31, %32, %3, %3) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index, index, index, index, index) -> ()
        "iree_tensor_ext.dispatch.tensor.store"(%36#1, %16, %11, %12, %arg0, %arg1, %31, %32, %3, %3) <{operandSegmentSizes = array<i32: 1, 1, 2, 2, 2, 2>, static_offsets = array<i64: -9223372036854775808, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: -9223372036854775808, -9223372036854775808>}> : (tensor<?x?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xf32>>, index, index, index, index, index, index, index, index) -> ()
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

