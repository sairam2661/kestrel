"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "reduce_and_expand"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "tt.reduce"(%arg0) ({
        %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "tt.yield"(%1) : (tensor<32xi32>) -> ()
      }) : (tensor<32xi32>) -> tensor<32xi32>
      %2 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
      "tt.return"(%2) : (tensor<32x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()