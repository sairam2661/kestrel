"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32

    %cmp0 = "arith.cmpi"(%arg0, %c1_i32, "eq") : (tensor<?xi32>, i32) -> tensor<?xi1>
    %cmp1 = "arith.cmpi"(%arg1, %c2_i32, "ne") : (tensor<?xi32>, i32) -> tensor<?xi1>

    %and = "arith.andi"(%cmp0, %cmp1) : (tensor<?xi1>, tensor<?xi1>) -> tensor<?xi1>

    %select = "arith.select"(%arg0, %arg1, %and) : (tensor<?xi32>, tensor<?xi32>, tensor<?xi1>) -> tensor<?xi32>

    "func.return"(%select) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()