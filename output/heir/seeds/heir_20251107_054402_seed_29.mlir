"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {}], function_type = (tensor<1x3xi1>, tensor<1x3xi32>, tensor<1x3xi64>) -> (tensor<1x3xi1>, tensor<1x3xi32>, tensor<1x3xi64>), sym_name = "bitwise_and_test"}> ({
  ^bb0(%arg0: tensor<1x3xi1>, %arg1: tensor<1x3xi32>, %arg2: tensor<1x3xi64>):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.constant"() <{value = 42}> : () -> i32
    %2 = "arith.constant"() <{value = 1234567890123456789}> : () -> i64
    %3 = "arith.cmpi"(%arg0, %0, "eq") : (tensor<1x3xi1>, i1) -> tensor<1x3xi1>
    %4 = "arith.cmpi"(%arg1, %1, "eq") : (tensor<1x3xi32>, i32) -> tensor<1x3xi1>
    %5 = "arith.cmpi"(%arg2, %2, "eq") : (tensor<1x3xi64>, i64) -> tensor<1x3xi1>
    %6 = "arith.andi"(%3, %4) : (tensor<1x3xi1>, tensor<1x3xi1>) -> tensor<1x3xi1>
    %7 = "arith.andi"(%6, %5) : (tensor<1x3xi1>, tensor<1x3xi1>) -> tensor<1x3xi1>
    "func.return"(%7, %arg1, %arg2) : (tensor<1x3xi1>, tensor<1x3xi32>, tensor<1x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()