"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>, %arg2: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.cmpi"(%arg0, %0) <{predicate = 5 : i64}> : (i32, tensor<128xi32>) -> i1
    %3:2 = "scf.if"(%2) ({
      %4 = "arith.mulsi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%5, %4) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }, {
      %6 = "arith.divsi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %7 = "arith.addi"(%6, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%6, %7) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }) : (i1) -> (tensor<128xi32>, tensor<128xi32>)
    "tt.return"(%3#0, %3#1) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()