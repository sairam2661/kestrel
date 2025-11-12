"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "intersect_tensors"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi1>
    %1 = "arith.select"(%0, %arg0, %arg1) : (tensor<?xi1>, tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    "func.return"(%1) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()