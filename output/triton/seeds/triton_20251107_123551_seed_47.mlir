"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "complicated_if_else"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %2 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
      %3 = "arith.constant"() <{value = dense<4> : tensor<16xi32>}> : () -> tensor<16xi32>
  
      %4:2 = "scf.if"(%arg0) ({
        %5 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        %6 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%5, %6) : (tensor<16xi32>, tensor<16xi32>) -> ()
      }, {
        %7:2 = "scf.if"(%arg0) ({
          %8 = "arith.subi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          %9 = "arith.divsi"(%arg1, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%8, %9) : (tensor<16xi32>, tensor<16xi32>) -> ()
        }, {
          %10 = "arith.addi"(%arg1, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%arg1, %10) : (tensor<16xi32>, tensor<16xi32>) -> ()
        }) : (i1) -> (tensor<16xi32>, tensor<16xi32>)
        "scf.yield"(%7#0, %7#1) : (tensor<16xi32>, tensor<16xi32>) -> ()
      }) : (i1) -> (tensor<16xi32>, tensor<16xi32>)
  
      "tt.return"(%4#0, %4#1) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()