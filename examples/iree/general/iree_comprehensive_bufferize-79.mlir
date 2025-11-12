#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "readonly_constant_bufferize"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = dense<0> : tensor<6xi32>}> : () -> tensor<6xi32>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<6xi32>>
    "iree_tensor_ext.dispatch.tensor.store"(%1, %2) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 6>, static_strides = array<i64: 1>}> : (tensor<6xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<6xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

