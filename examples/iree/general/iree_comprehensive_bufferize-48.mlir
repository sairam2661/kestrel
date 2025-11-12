#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "scan_1d_dim0_inclusive_sum"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<6xf32>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<f32>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 2 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<6xf32>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 6>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<writeonly:tensor<6xf32>>) -> tensor<6xf32>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 6>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<6xf32>>) -> tensor<6xf32>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<f32>>) -> tensor<f32>
    %7:2 = "iree_linalg_ext.scan"(%5, %4, %6) <{dimension = 0 : i64, inclusive = true, operandSegmentSizes = array<i32: 1, 2>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %8 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "iree_linalg_ext.yield"(%8) : (f32) -> ()
    }) : (tensor<6xf32>, tensor<6xf32>, tensor<f32>) -> (tensor<6xf32>, tensor<f32>)
    "iree_tensor_ext.dispatch.tensor.store"(%7#0, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 6>, static_strides = array<i64: 1>}> : (tensor<6xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<6xf32>>) -> ()
    "iree_tensor_ext.dispatch.tensor.store"(%7#1, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64>, static_sizes = array<i64>, static_strides = array<i64>}> : (tensor<f32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<f32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

