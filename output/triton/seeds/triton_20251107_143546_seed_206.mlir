"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>), sym_name = "reduce_and_addptr"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
      %0 = "tt.reduce"(%arg0) <{operation = "add"}> : (tensor<32xi32>) -> tensor<32xi32>
      %1 = "tt.addptr"(%arg1, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "tt.expand_dims"(%2, 0) : (tensor<32xi32>, i32) -> tensor<1x32xi32>
      "tt.return"(%1, %3) : (tensor<32xi32>, tensor<1x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()