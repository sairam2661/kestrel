#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "retry_constant_bufferize"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = dense<0> : tensor<6xi32>}> : () -> tensor<6xi32>
    %2 = "bufferization.to_buffer"(%1) <{read_only}> : (tensor<6xi32>) -> memref<6xi32>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<6xi32, #hal.descriptor_type<storage_buffer>>
    "memref.copy"(%2, %3) : (memref<6xi32>, memref<6xi32, #hal.descriptor_type<storage_buffer>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

