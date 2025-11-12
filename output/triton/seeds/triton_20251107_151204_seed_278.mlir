"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xf32>, tensor<128xi32>) -> (tensor<128xf32>, tensor<128xi32>), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: tensor<128xf32>, %arg1: tensor<128xi32>):
      %0 = "arith.constant"() <{value = dense<0.5> : tensor<128xf32>}> : () -> tensor<128xf32>
      %1 = "arith.addf"(%arg0, %0) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
      %2 = "arith.mulf"(%arg0, %0) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
      %3 = "arith.divf"(%arg0, %0) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
      %4 = "arith.cmpi"(%arg1, %arg1) <{predicate = 1 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
      %5 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %6 = "arith.addi"(%arg1, %5) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%1, %6) : (tensor<128xf32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()