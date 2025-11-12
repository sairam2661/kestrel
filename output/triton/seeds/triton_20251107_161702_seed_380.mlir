"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "complex_select"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "arith.constant"() <{value = dense<16> : tensor<32xi32>}> : () -> tensor<32xi32>
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %3:2 = "scf.if"(%2) ({
        %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%4) : (tensor<32xi32>) -> ()
      }, {
        %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%5) : (tensor<32xi32>) -> ()
      }) : (tensor<32xi1>) -> (tensor<32xi32>)
      "tt.return"(%3) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()