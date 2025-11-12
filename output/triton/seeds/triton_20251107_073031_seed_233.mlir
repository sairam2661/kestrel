"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_computation"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "arith.subi"(%2, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %4 = "arith.xori"(%3, %arg0) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "tt.return"(%4) : (tensor<10xi32>) -> ()
  }) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()