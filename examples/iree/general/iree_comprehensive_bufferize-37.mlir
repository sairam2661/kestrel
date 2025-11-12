#map = affine_map<()[s0] -> (s0 * 128)>
#map1 = affine_map<(d0)[s0] -> (-d0 + s0, 128)>
#map2 = affine_map<(d0, d1) -> (d1, d0)>
#map3 = affine_map<(d0, d1) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<constants = 3, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multi_result_reduce"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = -2147483648 : i32}> : () -> i32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %3 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %4 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 2 : index}> : () -> index
    %5 = "hal.interface.binding.subspan"(%2, %3) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>
    %6 = "hal.interface.binding.subspan"(%2, %3) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>
    %7 = "hal.interface.binding.subspan"(%4) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi32>>
    %8 = "hal.interface.binding.subspan"(%4) <{binding = 3 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi32>>
    %9 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %10 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %11 = "affine.apply"(%9) <{map = #map}> : (index) -> index
    %12 = "affine.apply"(%10) <{map = #map}> : (index) -> index
    "scf.for"(%11, %3, %12) ({
    ^bb0(%arg0: index):
      %13 = "affine.min"(%arg0, %3) <{map = #map1}> : (index, index) -> index
      %14 = "iree_tensor_ext.dispatch.tensor.load"(%8, %4, %arg0, %13) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi32>>, index, index, index) -> tensor<?xi32>
      %15 = "iree_tensor_ext.dispatch.tensor.load"(%7, %4, %arg0, %13) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi32>>, index, index, index) -> tensor<?xi32>
      %16 = "iree_tensor_ext.dispatch.tensor.load"(%5, %2, %3, %arg0, %2, %13) <{operandSegmentSizes = array<i32: 1, 2, 1, 2, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>, index, index, index, index, index) -> tensor<?x?xi32>
      %17 = "iree_tensor_ext.dispatch.tensor.load"(%6, %2, %3, %arg0, %2, %13) <{operandSegmentSizes = array<i32: 1, 2, 1, 2, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: -9223372036854775808, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x?xi32>>, index, index, index, index, index) -> tensor<?x?xi32>
      %18 = "linalg.fill"(%1, %15) <{operandSegmentSizes = array<i32: 1, 1>}> ({
      ^bb0(%arg7: i32, %arg8: i32):
        "linalg.yield"(%arg7) : (i32) -> ()
      }) : (i32, tensor<?xi32>) -> tensor<?xi32>
      %19 = "linalg.fill"(%0, %14) <{operandSegmentSizes = array<i32: 1, 1>}> ({
      ^bb0(%arg5: i32, %arg6: i32):
        "linalg.yield"(%arg5) : (i32) -> ()
      }) : (i32, tensor<?xi32>) -> tensor<?xi32>
      %20:2 = "linalg.generic"(%16, %17, %18, %19) <{indexing_maps = [#map2, #map2, #map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 2>}> ({
      ^bb0(%arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32):
        %21 = "arith.cmpi"(%arg1, %arg3) <{predicate = 5 : i64}> : (i32, i32) -> i1
        %22 = "arith.select"(%21, %arg1, %arg3) : (i1, i32, i32) -> i32
        %23 = "arith.cmpi"(%arg1, %arg3) <{predicate = 0 : i64}> : (i32, i32) -> i1
        %24 = "arith.cmpi"(%arg2, %arg4) <{predicate = 2 : i64}> : (i32, i32) -> i1
        %25 = "arith.select"(%24, %arg2, %arg4) : (i1, i32, i32) -> i32
        %26 = "arith.select"(%21, %arg2, %arg4) : (i1, i32, i32) -> i32
        %27 = "arith.select"(%23, %25, %26) : (i1, i32, i32) -> i32
        "linalg.yield"(%22, %27) : (i32, i32) -> ()
      }) : (tensor<?x?xi32>, tensor<?x?xi32>, tensor<?xi32>, tensor<?xi32>) -> (tensor<?xi32>, tensor<?xi32>)
      "iree_tensor_ext.dispatch.tensor.store"(%20#0, %7, %4, %arg0, %13) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi32>>, index, index, index) -> ()
      "iree_tensor_ext.dispatch.tensor.store"(%20#1, %8, %4, %arg0, %13) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi32>>, index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

