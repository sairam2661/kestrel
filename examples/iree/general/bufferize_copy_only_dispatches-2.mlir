#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "concatenate_cst"}> ({
    %0 = "arith.constant"() <{value = dense<0> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%1) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<2x5xi32>>
    "iree_tensor_ext.dispatch.tensor.store"(%0, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 2>, static_sizes = array<i64: 2, 3>, static_strides = array<i64: 1, 1>}> : (tensor<2x3xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<2x5xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

