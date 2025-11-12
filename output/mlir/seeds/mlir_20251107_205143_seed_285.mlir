"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi64>) -> tensor<2xi64>, sym_name = "mixed_type_arithmetic"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi64>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (tensor<2xi32>, i32) -> tensor<2xi32>
    %3 = "arith.addi"(%2, %2) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %4 = "arith.cmpi"(%3, %3, "eq") : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi1>
    %5 = "arith.addf"(%arg1, %1) : (tensor<2xi64>, i64) -> tensor<2xi64>
    %6 = "arith.addf"(%5, %5) : (tensor<2xi64>, tensor<2xi64>) -> tensor<2xi64>
    %7 = "arith.cmpf"(%6, %6, "eq") : (tensor<2xi64>, tensor<2xi64>) -> tensor<2xi1>
    "func.return"(%7) : (tensor<2xi1>) -> ()
  }) : () -> ()
}) : () -> ()