"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>, index) -> f32, sym_name = "to_tensor_op_unsupported"}> ({
  ^bb0(%arg0: memref<?xf32>, %arg1: index):
    %0 = "bufferization.to_tensor"(%arg0) : (memref<?xf32>) -> tensor<?xf32>
    %1 = "tensor.extract"(%0, %arg1) : (tensor<?xf32>, index) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

