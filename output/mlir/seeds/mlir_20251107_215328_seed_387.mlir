"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>) -> (tensor<?xi32>, tensor<?xi32>), sym_name = "intersect_tensors", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
      %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %3 = "arith.select"(%0, %1, %2) : (tensor<?xi1>, i32, i32) -> tensor<?xi32>
      %4 = "arith.select"(%0, %2, %1) : (tensor<?xi1>, i32, i32) -> tensor<?xi32>
      "func.return"(%3, %4) : (tensor<?xi32>, tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()