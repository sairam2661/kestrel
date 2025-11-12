"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi1>, tensor<?xi1>) -> tensor<?xi1>, sym_name = "unique_bitwise_xor"}> ({
    ^bb0(%arg0: tensor<?xi1>, %arg1: tensor<?xi1>):
      %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<?xi1>, tensor<?xi1>) -> tensor<?xi1>
      "func.return"(%0) : (tensor<?xi1>) -> ()
  }) : () -> ()
}) : () -> ()