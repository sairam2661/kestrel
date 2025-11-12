"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi64>) -> tensor<2x2xi1>, sym_name = "test_complex_compare"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi64>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg0, %0, "eq") : (tensor<2x2xi32>, i32, i1) -> tensor<2x2xi1>
    %2 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %3 = "arith.cmpi"(%arg1, %2, "eq") : (tensor<2x2xi64>, i64, i1) -> tensor<2x2xi1>
    %4 = "arith.and"(%1, %3) : (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>
    "func.return"(%4) : (tensor<2x2xi1>) -> ()
  }) : () -> ()
}) : () -> ()