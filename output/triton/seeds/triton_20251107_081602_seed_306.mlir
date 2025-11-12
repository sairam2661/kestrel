"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "arith.constant"() <{value = dense<10> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflowFlagsSigned}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %3 = "arith.subi"(%2, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %4 = "arith.xori"(%3, %arg0) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %5 = "arith.divsi"(%4, %1) <{overflowFlags = #arith_overflowFlagsSigned}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 0 : i32}> : (tensor<16x16xi32>) -> tensor<1x16x16xi32>
    %7 = "tt.reduce"(%6, "arith.addi" ) <{dimensions = [0, 2]}> : (tensor<1x16x16xi32>, tensor<1x16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()