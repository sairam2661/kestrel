"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>), sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.make_range"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.subi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "tt.reduce"(%0) <{reduction_op = #ttg_reduction_op_add}> : (tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.muli"(%1, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%3, %4) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 64 : i32} : () -> ()