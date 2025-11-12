"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.divsi"(%0, %arg0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.remsi"(%1, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.subi"(%2, %arg0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.select"(%3, %arg1, %2) : (tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()