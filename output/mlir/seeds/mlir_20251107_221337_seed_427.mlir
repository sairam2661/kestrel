"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi8>, tensor<3x3xi32>) -> tensor<3x3xi1>, sym_name = "test_greater_equal_with_constants"}> ({
    ^bb0(%arg0: tensor<3x3xi8>, %arg1: tensor<3x3xi32>):
      %c0_i8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
      %c1_i8 = "arith.constant"() <{value = 1 : i8}> : () -> i8
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %cmp0 = "arith.cmpi"(%arg0, %c0_i8) <{predicate = "eq"}> : (tensor<3x3xi8>, i8) -> tensor<3x3xi1>
      %cmp1 = "arith.cmpi"(%arg1, %c2_i32) <{predicate = "ne"}> : (tensor<3x3xi32>, i32) -> tensor<3x3xi1>
      %and = "arith.andi"(%cmp0, %cmp1) : (tensor<3x3xi1>, tensor<3x3xi1>) -> tensor<3x3xi1>
      "func.return"(%and) : (tensor<3x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()