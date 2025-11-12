"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 1 : i64}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "tt.reduce"(%1, %2) <{reduction_op = "add"}> : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<1xi32>
    "tt.return"(%3) : (tensor<1xi32>) -> ()
  }) : () -> (tensor<1xi32>)
}) : () -> ()