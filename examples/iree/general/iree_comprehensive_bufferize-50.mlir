#map = affine_map<()[s0] -> (s0 * 64)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "scatter_update_scalar_1D"}> ({
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4xi32>>
    %3 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1xi32>>
    %4 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<8xi32>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<8xi32>>) -> tensor<8xi32>
    %6 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %7 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %8 = "affine.apply"(%6) <{map = #map}> : (index) -> index
    %9 = "affine.apply"(%7) <{map = #map}> : (index) -> index
    "scf.for"(%8, %0, %9) ({
    ^bb0(%arg0: index):
      %10 = "iree_tensor_ext.dispatch.tensor.load"(%2, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: 4>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4xi32>>, index) -> tensor<4xi32>
      %11 = "iree_tensor_ext.dispatch.tensor.load"(%3, %arg0) <{operandSegmentSizes = array<i32: 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 4, 1>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<4x1xi32>>, index) -> tensor<4x1xi32>
      %12 = "iree_linalg_ext.scatter"(%10, %11, %5) <{dimension_map = array<i64: 0>, operandSegmentSizes = array<i32: 2, 1>, unique_indices = true}> ({
      ^bb0(%arg1: i32, %arg2: i32):
        "iree_linalg_ext.yield"(%arg1) : (i32) -> ()
      }) : (tensor<4xi32>, tensor<4x1xi32>, tensor<8xi32>) -> tensor<8xi32>
      "iree_tensor_ext.dispatch.tensor.store"(%12, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (tensor<8xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<8xi32>>) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

