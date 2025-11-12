#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "eliminate_empty_tensors_store_to_buffer_op_with_reshape"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<128xf32>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<4x32xf32>
    %3 = "iree_codegen.load_from_buffer"(%1) : (memref<128xf32>) -> tensor<128xf32>
    %4 = "tensor.empty"() : () -> tensor<128xf32>
    %5 = "linalg.copy"(%3, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      "linalg.yield"(%arg0) : (f32) -> ()
    }) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %6 = "memref.collapse_shape"(%2) <{reassociation = [[0, 1]]}> : (memref<4x32xf32>) -> memref<128xf32>
    "iree_codegen.store_to_buffer"(%5, %6) : (tensor<128xf32>, memref<128xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

