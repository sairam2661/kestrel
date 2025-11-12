"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<32xi32>), sym_name = "reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0) <{operation = "add", reduction_dim = 0}> : (tensor<16xi32>) -> tensor<i32>
    %1 = "tt.reduce"(%arg1) <{operation = "add", reduction_dim = 0}> : (tensor<16xi32>) -> tensor<i32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %3 = "tt.expand_dims"(%2) <{dim = 0}> : (tensor<i32>) -> tensor<1x32xi32>
    "tt.return"(%3) : (tensor<1x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()