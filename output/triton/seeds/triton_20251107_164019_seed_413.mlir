"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
    %4 = "arith.divsi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.xori"(%4, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1x16xi32>
    %7 = "tt.reduce"() <{operation = "add", operand = 0 : i32}> ({
      ^bb1(%arg2: tensor<1xi32>):
        %8 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
        "scf.yield"(%8) : (tensor<1xi32>) -> ()
    }) : (tensor<1x16xi32>) -> tensor<1xi32>
    "tt.return"(%7) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()