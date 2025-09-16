"builtin.module"() ({
  "func.func"() <{function_type = (memref<5xf32>) -> memref<5xf32>, sym_name = "foo"}> ({
  ^bb0(%arg2: memref<5xf32>):
    %1 = "tensor.empty"() : () -> tensor<5xf32>
    %2 = "func.call"(%1, %arg2) <{callee = @bar}> : (tensor<5xf32>, memref<5xf32>) -> memref<5xf32>
    "func.return"(%2) : (memref<5xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5xf32>, memref<5xf32>) -> memref<5xf32>, sym_name = "bar"}> ({
  ^bb0(%arg0: tensor<5xf32>, %arg1: memref<5xf32>):
    %0 = "func.call"(%arg1) <{callee = @foo}> : (memref<5xf32>) -> memref<5xf32>
    "func.return"(%0) : (memref<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

