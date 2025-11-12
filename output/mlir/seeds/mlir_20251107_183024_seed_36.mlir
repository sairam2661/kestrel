"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "mixed_splat"}> ({
    ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>):
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %0 = "arith.addi"(%arg0, %c1_i32) : (tensor<5xi32>, i32) -> tensor<5xi32>
      %1 = "arith.cmpi"(%0, %arg1, "slt") : (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi1>
      %2 = "arith.select"(%1, %arg0, %arg1) : (tensor<5xi1>, tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>
      "func.return"(%2) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()