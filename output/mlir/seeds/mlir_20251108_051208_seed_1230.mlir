"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "elementwise_add"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    %2 = "arith.addi"(%1, %0) : (tensor<?xi32>, i32) -> tensor<?xi32>
    "func.return"(%2) : (tensor<?xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xi32>) -> tensor<?xi32>, sym_name = "scalar_add"}> ({
  ^bb0(%arg0: tensor<?xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<?xi32>, i32) -> tensor<?xi32>
    "func.return"(%1) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()