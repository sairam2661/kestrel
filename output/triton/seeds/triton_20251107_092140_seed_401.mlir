"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<4> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.divsi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.subi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> tensor<16xi32>
    %7 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %8 = "tt.expand_dims"(%5) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %9 = "arith.select"(%arg0, %7, %8) : (tensor<16xi32>, tensor<16x1xi32>, tensor<16x1xi32>) -> tensor<16x1xi32>
    "tt.return"(%2, %9) : (tensor<16xi32>, tensor<16x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()