"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "complex_cmpi_tensor"}> ({
    ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
      %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %cmp0 = "arith.cmpi"(%arg0, %c0, "ne") : (tensor<?xi32>, i32) -> tensor<?xi1>
      %cmp1 = "arith.cmpi"(%arg1, %c1, "gt") : (tensor<?xi32>, i32) -> tensor<?xi1>
      %and = "arith.and"(%cmp0, %cmp1) : (tensor<?xi1>, tensor<?xi1>) -> tensor<?xi1>
      "func.return"(%and) : (tensor<?xi1>) -> ()
  }) : () -> ()
}) : () -> ()