"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi64>) -> tensor<4xi32>, sym_name = "mixed_types_test"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi64>):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %2 = "arith.addi"(%arg0, %0) : (tensor<4xi32>, i32) -> tensor<4xi32>
      %3 = "arith.mul"(%arg1, %1) : (tensor<4xi64>, i64) -> tensor<4xi64>
      %4 = "arith.cmpi"("slt", %0, %3) : (i32, tensor<4xi64>) -> tensor<4xi1>
      %5 = "tosa.cast"(%arg0) : (tensor<4xi32>) -> tensor<4xi64>
      %6 = "arith.addi"(%5, %3) : (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi64>
      %7 = "tosa.cast"(%6) : (tensor<4xi64>) -> tensor<4xi32>
      "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()