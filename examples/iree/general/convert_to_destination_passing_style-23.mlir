#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "early_bufferization_ops"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<4xi32, #hal.descriptor_type<storage_buffer>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<4xi32, #hal.descriptor_type<storage_buffer>>
    %3 = "iree_codegen.load_from_buffer"(%1) : (memref<4xi32, #hal.descriptor_type<storage_buffer>>) -> tensor<4xi32>
    %4 = "tensor.empty"() : () -> tensor<4xi32>
    %5 = "linalg.copy"(%3, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      "linalg.yield"(%arg0) : (i32) -> ()
    }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "iree_codegen.store_to_buffer"(%5, %2) : (tensor<4xi32>, memref<4xi32, #hal.descriptor_type<storage_buffer>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

