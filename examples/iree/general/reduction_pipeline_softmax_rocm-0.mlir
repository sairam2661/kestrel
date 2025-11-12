#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "softmax"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = -3.40282347E+38 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<12x128x40960xf32>>
    %5 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<12x128x40960xf32>>
    %6 = "iree_tensor_ext.dispatch.tensor.load"(%4) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 12, 128, 40960>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<12x128x40960xf32>>) -> tensor<12x128x40960xf32>
    %7 = "tensor.empty"() : () -> tensor<12x128x40960xf32>
    %8 = "linalg.softmax"(%6, %7) <{dimension = 2 : i64}> : (tensor<12x128x40960xf32>, tensor<12x128x40960xf32>) -> tensor<12x128x40960xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%8, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 12, 128, 40960>, static_strides = array<i64: 1, 1, 1>}> : (tensor<12x128x40960xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<12x128x40960xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

