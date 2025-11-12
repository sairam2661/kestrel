"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "arith.constant"() <{value = 123 : i32}> : () -> i32
      %2 = "tt.expand_dims"(%1) : (i32) -> tensor<16xi32>
      %3 = "arith.divsi"(%0, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.remsi"(%0, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "arith.cmpi"(%3, %4) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %6 = "scf.if"(%5) ({
        %7 = "arith.addi"(%3, %4) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%7) : (tensor<16xi32>) -> ()
      }, {
        %8 = "arith.mul"(%0, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%8) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi1>) -> tensor<16xi32>
      "tt.return"(%3, %6) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()