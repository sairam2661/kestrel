"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi64>) -> (tensor<?xi32>, tensor<?xi64>), sym_name = "mixed_type_add"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi64>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i64}> : () -> i64
    %2 = "arith.cmpi"(%arg0, %0, "eq") : (tensor<?xi32>, i32) -> i1
    %3 = "arith.cmpi"(%arg1, %1, "eq") : (tensor<?xi64>, i64) -> i1
    %4 = "arith.andi"(%2, %3) : (i1, i1) -> i1
    %5 = "arith.select"(%4, %arg0, %0) : (i1, tensor<?xi32>, i32) -> tensor<?xi32>
    %6 = "arith.select"(%4, %arg1, %1) : (i1, tensor<?xi64>, i64) -> tensor<?xi64>
    "func.return"(%5, %6) : (tensor<?xi32>, tensor<?xi64>) -> ()
  }) : () -> ()
}) : () -> ()