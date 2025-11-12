"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_mani"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "tensor.insert"(%0, %arg0, %0) : (tensor<8xi32>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "tensor.extract"(%1, %0) : (tensor<8xi32>, tensor<8xi32>) -> i32
    %3 = "arith.addi"(%2, %2) <{overflowFlags = #arith_overflow_Unit}> : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %3) <{overflowFlags = #arith_overflow_Unit}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %6 = "arith.select"(%4, %5, %3) <{predicate = "slt"}> : (i32, i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg1, %0) : (i32, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%7) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()