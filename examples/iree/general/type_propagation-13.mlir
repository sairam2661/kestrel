#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "sort"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<1xi8>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1xi32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<1xi8>>) -> tensor<1xi8>
    %4 = "arith.trunci"(%3) <{overflowFlags = #arith.overflow<none>}> : (tensor<1xi8>) -> tensor<1xi1>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<1xi32>>) -> tensor<1xi32>
    %6:2 = "iree_linalg_ext.sort"(%4, %5) <{dimension = 0 : i64, operandSegmentSizes = array<i32: 0, 2>}> ({
    ^bb0(%arg0: i1, %arg1: i1, %arg2: i32, %arg3: i32):
      %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 6 : i64}> : (i1, i1) -> i1
      "iree_linalg_ext.yield"(%7) : (i1) -> ()
    }) : (tensor<1xi1>, tensor<1xi32>) -> (tensor<1xi1>, tensor<1xi32>)
    "iree_tensor_ext.dispatch.tensor.store"(%6#1, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1>, static_strides = array<i64: 1>}> : (tensor<1xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

