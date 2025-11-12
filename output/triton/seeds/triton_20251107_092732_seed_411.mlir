"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complicated_reduce"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
      %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.cmpi"(%1, %arg1) <{predicate = 8 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<i1>
      %3 = "arith.select"(%2, %1, %arg1) : (tensor<i1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %4 = "arith.remsi"(%3, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()