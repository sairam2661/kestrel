#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "scatter"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi8>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x1xi32>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<3xi8>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 8>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8xi8>>) -> tensor<8xi8>
    %5 = "arith.trunci"(%4) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi8>) -> tensor<8xi1>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 8, 1>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<8x1xi32>>) -> tensor<8x1xi32>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 3>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<3xi8>>) -> tensor<3xi8>
    %8 = "arith.trunci"(%7) <{overflowFlags = #arith.overflow<none>}> : (tensor<3xi8>) -> tensor<3xi1>
    %9 = "iree_linalg_ext.scatter"(%5, %6, %8) <{dimension_map = array<i64: 0>, operandSegmentSizes = array<i32: 2, 1>, unique_indices = false}> ({
    ^bb0(%arg0: i1, %arg1: i1):
      %11 = "arith.minui"(%arg1, %arg0) : (i1, i1) -> i1
      "iree_linalg_ext.yield"(%11) : (i1) -> ()
    }) : (tensor<8xi1>, tensor<8x1xi32>, tensor<3xi1>) -> tensor<3xi1>
    %10 = "arith.extui"(%9) : (tensor<3xi1>) -> tensor<3xi8>
    "iree_tensor_ext.dispatch.tensor.store"(%10, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 3>, static_strides = array<i64: 1>}> : (tensor<3xi8>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<3xi8>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

