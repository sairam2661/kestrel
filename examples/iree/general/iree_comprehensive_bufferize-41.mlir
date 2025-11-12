#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<(d0)[s0] -> (-d0 + s0, 64)>
#map2 = affine_map<(d0)[s0] -> (d0 + s0)>
#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dynamic_update_slice"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> index
    %3 = "hal.interface.binding.subspan"(%1) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi32>>
    %4 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<i32>>
    %5 = "hal.interface.binding.subspan"(%2, %1) <{binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 2>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<i32>>) -> tensor<i32>
    %7 = "tensor.extract"(%6) : (tensor<i32>) -> i32
    %8 = "arith.cmpi"(%7, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %9 = "arith.select"(%8, %7, %0) : (i1, i32, i32) -> i32
    %10 = "arith.cmpi"(%9, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %11 = "arith.select"(%10, %9, %0) : (i1, i32, i32) -> i32
    %12 = "arith.index_cast"(%11) : (i32) -> index
    %13 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %14 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %15 = "affine.apply"(%13) <{map = #map}> : (index) -> index
    %16 = "affine.apply"(%14) <{map = #map}> : (index) -> index
    "scf.for"(%15, %1, %16) ({
    ^bb0(%arg0: index):
      %17 = "affine.min"(%arg0, %1) <{map = #map1}> : (index, index) -> index
      %18 = "iree_tensor_ext.dispatch.tensor.load"(%3, %1, %arg0, %17) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xi32>>, index, index, index) -> tensor<?xi32>
      %19 = "affine.apply"(%arg0, %12) <{map = #map2}> : (index, index) -> index
      "iree_tensor_ext.dispatch.tensor.store"(%18, %5, %2, %1, %19, %17) <{operandSegmentSizes = array<i32: 1, 1, 2, 1, 1, 0>, static_offsets = array<i64: 0, -9223372036854775808>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?x?xi32>>, index, index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

