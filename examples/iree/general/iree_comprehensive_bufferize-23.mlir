#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_extract"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<i32>>
    %1 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x9xi32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3, 9>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x9xi32>>) -> tensor<3x9xi32>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<i32>>) -> tensor<i32>
    %4 = "tensor.extract"(%3) : (tensor<i32>) -> i32
    %5 = "linalg.fill"(%4, %2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      "linalg.yield"(%arg0) : (i32) -> ()
    }) : (i32, tensor<3x9xi32>) -> tensor<3x9xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%5, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 3, 9>, static_strides = array<i64: 1, 1>}> : (tensor<3x9xi32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<3x9xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

