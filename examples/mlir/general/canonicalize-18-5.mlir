"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> index, sym_name = "dim_of_tensor_load"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "bufferization.to_tensor"(%arg0) : (memref<?xf32>) -> tensor<?xf32>
    %2 = "tensor.dim"(%1, %0) : (tensor<?xf32>, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

