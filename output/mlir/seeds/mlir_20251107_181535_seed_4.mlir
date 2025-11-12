"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi64>, sym_name = "add_tensors"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "tosa.cast"(%2) : (i32) -> i64
    %4 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %5 = "tosa.cast"(%4) : (tensor<2x2xi32>) -> tensor<2x2xi64>
    %6 = "arith.addi"(%5, %3) : (tensor<2x2xi64>, i64) -> tensor<2x2xi64>
    "func.return"(%6) : (tensor<2x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()