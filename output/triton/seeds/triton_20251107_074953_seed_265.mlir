"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "reduce_and_select"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
      %2 = "tt.reduce"() ({
        ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>):
          %3 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%3) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.cmpi"(%0, %2) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %5 = "arith.select"(%4, %arg1, %0) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()