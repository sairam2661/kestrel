#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "static_1d_sort"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1000xi32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1000>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<1000xi32>>) -> tensor<1000xi32>
    %3 = "iree_linalg_ext.sort"(%2) <{dimension = 0 : i64, operandSegmentSizes = array<i32: 0, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "iree_linalg_ext.yield"(%4) : (i1) -> ()
    }) : (tensor<1000xi32>) -> tensor<1000xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 1000>, static_strides = array<i64: 1>}> : (tensor<1000xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<1000xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

