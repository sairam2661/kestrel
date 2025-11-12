"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "complex_ops"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.xori"(%arg1, %arg2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.select"(%arg0, %1, %2) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.divsi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.remsi"(%arg1, %arg2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "scf.if"(%arg0) ({
      %7 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%7) : (tensor<32xi32>) -> ()
    }, {
      %8 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%8) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%6) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()