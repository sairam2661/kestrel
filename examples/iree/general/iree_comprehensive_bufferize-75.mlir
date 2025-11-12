#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2xf32>, sym_name = "drop_resource_cast_if_not_storage_buffer"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 2>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2xf32>>) -> tensor<2xf32>
    %4 = "tensor.empty"() : () -> tensor<2xf32>
    %5 = "linalg.copy"(%3, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      "linalg.yield"(%arg0) : (f32) -> ()
    }) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    %6 = "iree_gpu.buffer_resource_cast"(%5) : (tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%6) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

