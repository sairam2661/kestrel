"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_add_compare"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %1 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
      %2 = "arith.addi"(%0, %c1) : (tensor<4xi32>, i32) -> tensor<4xi32>
      "func.return"(%2) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>, sym_name = "compare_tensors"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %3 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
      "func.return"(%3) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()