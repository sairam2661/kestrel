"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.subi"(%0, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.xori"(%1, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "tt.reduce"(%3) <{operation = "add", type = tensor<16xi32>}> : (tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.remsi"(%4, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "tt.make_range"(%5) : (tensor<16xi32>) -> !tt_ptrtensor16xf32
    "tt.return"(%6) : (!tt_ptrtensor16xf32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 2 : i32} : () -> ()