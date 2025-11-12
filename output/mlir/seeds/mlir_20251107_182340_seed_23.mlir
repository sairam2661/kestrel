"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "test_add_tensors"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    %1 = "arith.addi"(%0, %c0) : (tensor<?xi32>, i32) -> tensor<?xi32>
    %2 = "arith.addi"(%1, %c1) : (tensor<?xi32>, i32) -> tensor<?xi32>
    %3 = "arith.addi"(%2, %c2) : (tensor<?xi32>, i32) -> tensor<?xi32>
    %4 = "arith.addi"(%3, %c3) : (tensor<?xi32>, i32) -> tensor<?xi32>
    "func.return"(%4) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()