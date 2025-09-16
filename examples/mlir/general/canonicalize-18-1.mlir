"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> memref<?xf32>, sym_name = "buffer_cast_of_tensor_load"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "bufferization.to_tensor"(%arg0) : (memref<?xf32>) -> tensor<?xf32>
    %1 = "bufferization.to_buffer"(%0) : (tensor<?xf32>) -> memref<?xf32>
    "func.return"(%1) : (memref<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

