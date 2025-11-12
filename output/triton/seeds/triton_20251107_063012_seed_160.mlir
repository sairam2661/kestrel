"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi8>) -> tensor<16xi32>, sym_name = "type_boundaries"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi8>):
    %0 = "arith.constant"() <{value = dense<1 : i32> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<255 : i8> : tensor<16xi8>}> : () -> tensor<16xi8>
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.remsi"(%arg0, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.xori"(%arg1, %1) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    %5 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "scf.if"(%4) ({
    ^bb0:
      %7 = "arith.subi"(%5, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%7) : (tensor<16xi32>) -> ()
    ^bb1:
      %8 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      "scf.yield"(%8) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi8>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()