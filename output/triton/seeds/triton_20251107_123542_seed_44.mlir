"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<32xi32>, tensor<32xf32>) -> (i32, tensor<32xi32>, tensor<32xf32>), sym_name = "mixed_types_complex"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<32xi32>, %arg2: tensor<32xf32>):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowmodewrap}> : (i32, i32) -> i32
      %2 = "arith.extsi"(%1) : (i32) -> i64
      %3 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
      %4 = "tt.bitcast"(%3) : (tensor<32xi32>) -> tensor<32xf32>
      %5 = "arith.addf"(%arg2, %4) : (tensor<32xf32>, tensor<32xf32>) -> tensor<32xf32>
      %6:2 = "scf.if"(%1) ({
        %7 = "arith.muli"(%arg1, %3) <{overflowFlags = #arith_overflowmodesat}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        %8 = "arith.subf"(%arg2, %4) : (tensor<32xf32>, tensor<32xf32>) -> tensor<32xf32>
        "scf.yield"(%7, %8) : (tensor<32xi32>, tensor<32xf32>) -> ()
      }, {
        %9 = "arith.minui"(%3, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        %10 = "arith.maxui"(%arg1, %3) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%9, %10) : (tensor<32xi32>, tensor<32xi32>) -> ()
      }) : (i32) -> (tensor<32xi32>, tensor<32xf32>)
      "tt.return"(%1, %6#0, %6#1) : (i32, tensor<32xi32>, tensor<32xf32>) -> ()
  }) : () -> ()
}) : () -> ()