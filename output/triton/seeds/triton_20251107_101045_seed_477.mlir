"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_op_combinations", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      %1 = "arith.cmpi"(%0, %arg0, "ne") : (tensor<10xi32>, tensor<10xi32>, i32) -> tensor<10xi1>
      %2 = "arith.constant"() <{value = dense<1> : tensor<10xi32>}> : () -> tensor<10xi32>
      %3 = "arith.select"(%1, %0, %2) : (tensor<10xi1>, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      "tt.return"(%3) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 16 : i32, "ttg.threads-per-warp" = 32 : i32, "ttg.target" = "cuda:90"} : () -> ()