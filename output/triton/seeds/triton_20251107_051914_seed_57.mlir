"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xf32>, i32) -> tensor<16xi32>, sym_name = "stress_test"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xf32>, %arg2: i32):
    %0 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<3.0 : f32> : tensor<16xf32>}> : () -> tensor<16xf32>
    %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.remsi"(%arg0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.mulif"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>
    %6 = "arith.xori"(%arg0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "scf.if"(%arg2) ({
      %8 = "arith.divsi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%8) : (tensor<16xi32>) -> ()
    }, {
      %9 = "arith.divsi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%9) : (tensor<16xi32>) -> ()
    }) : (i32) -> tensor<16xi32>
    %10 = "arith.addi"(%7, %6) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%10) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()