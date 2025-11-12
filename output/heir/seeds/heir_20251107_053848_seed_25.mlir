"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_with_secret"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%1) : (i32) -> ()
    }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "add_with_secret"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%1) : (i32) -> ()
    }) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "increment_tensor"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "func.call"(%arg0, %0) <{callee = @tensor_add_with_secret}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%1) : (tensor<4xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (i32) -> i32, sym_name = "increment_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "func.call"(%arg0, %0) <{callee = @add_with_secret}> : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "double_tensor"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "func.call"(%arg0, %arg0) <{callee = @tensor_add_with_secret}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (i32) -> i32, sym_name = "double_scalar"}> ({
  ^bb0(%arg0: i32):
    %0 = "func.call"(%arg0, %arg0) <{callee = @add_with_secret}> : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()