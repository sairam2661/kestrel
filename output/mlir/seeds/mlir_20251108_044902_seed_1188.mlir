"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<4xi32>) -> (tensor<?xi32>), sym_name = "test_merge_tensors"}> ({
    ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<4xi32>):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %cmp0 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<?xi32>, tensor<4xi32>, i32) -> tensor<?xi1>
      %select0 = "arith.select"(%cmp0, %arg0, %arg1) : (tensor<?xi1>, tensor<?xi32>, tensor<4xi32>) -> tensor<?xi32>
      "func.return"(%select0) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()