#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fold_reshape_slice_store"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x1x96xf32>>
    %4 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1728xf32>>
    %5 = "iree_tensor_ext.dispatch.tensor.load"(%3) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0, 0>, static_sizes = array<i64: 3, 3, 1, 96>, static_strides = array<i64: 1, 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<3x3x1x96xf32>>) -> tensor<3x3x1x96xf32>
    %6 = "linalg.fill"(%2, %5) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      "linalg.yield"(%arg0) : (f32) -> ()
    }) : (f32, tensor<3x3x1x96xf32>) -> tensor<3x3x1x96xf32>
    %7 = "tensor.collapse_shape"(%6) <{reassociation = [[0, 1, 2, 3]]}> : (tensor<3x3x1x96xf32>) -> tensor<864xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%7, %4) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 576>, static_sizes = array<i64: 864>, static_strides = array<i64: 1>}> : (tensor<864xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<1728xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

