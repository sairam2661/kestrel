"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, i32) -> tensor<?x?xf32>, sym_name = "dynamic_tensor_op"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
    ^bb1(%cond: i1):
      %3 = "arith.addf"(%arg0, %arg0) : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
      "scf.yield"(%3) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    }) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%2) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()