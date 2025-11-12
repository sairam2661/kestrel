"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_check}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_check}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.remsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode_check}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.xori"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "tt.reduce"() <{operation = "sum", reduction_var = "i32"}> ({
      ^bb1(%i: i32, %acc: tensor<128xi32>):
        %5 = "arith.addi"(%acc, %3) <{overflowFlags = #arith_overflow_mode_check}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%5) : (tensor<128xi32>) -> ()
    }) : () -> tensor<128xi32>
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()