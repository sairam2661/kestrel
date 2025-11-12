"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "complex_reduction"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "tt.reduce"(%arg0) <{operation = "add"}> : (tensor<16xi32>) -> tensor<1xi32>
      %1 = "tt.reduce"(%arg1) <{operation = "mul"}> : (tensor<16xi32>) -> tensor<1xi32>
      %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
      %3 = "tt.expand_dims"(%2) <{axis = 0 : i32}> : (tensor<1xi32>) -> tensor<16xi32>
      %4 = "scf.if"(%arg0) ({
        %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%5) : (tensor<16xi32>) -> ()
      }, {
        %6 = "arith.select"(%arg0, %arg1, %arg0) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%6) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%3, %4) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()