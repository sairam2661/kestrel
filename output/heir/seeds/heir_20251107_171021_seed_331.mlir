"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "mixed_tensor_operations"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>):
    %0 = "arith.constant"() <{value = dense<1 : i32> : tensor<5xi32>}> : () -> tensor<5xi32>
    %1 = "tensor.extract"(%arg0, %0) : (tensor<5xi32>, tensor<5xi32>) -> i32
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tensor.insert"(%2, %arg1, %0) : (i32, tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>
    %4 = "arith.constant"() <{value = dense<2 : i32> : tensor<5xi32>}> : () -> tensor<5xi32>
    %5 = "tensor.extract"(%arg0, %4) : (tensor<5xi32>, tensor<5xi32>) -> i32
    %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %3, %4) : (i32, tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>
    "func.return"(%7) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()