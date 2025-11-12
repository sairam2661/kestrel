"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, index) -> tensor<i32>, sym_name = "complex_tensor_op_chain"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<i32>, i32) -> tensor<i32>
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) : (tensor<i32>, i32) -> tensor<i32>
    %4 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %5 = "arith.addi"(%3, %4) : (tensor<i32>, i32) -> tensor<i32>
    %6 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %7 = "arith.addi"(%5, %6) : (tensor<i32>, i32) -> tensor<i32>
    %8 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %9 = "arith.addi"(%7, %8) : (tensor<i32>, i32) -> tensor<i32>
    "func.return"(%9) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()