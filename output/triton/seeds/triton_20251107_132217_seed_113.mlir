"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>, tensor<32xi32>), sym_name = "complex_op_combo"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.cmpi"(%arg0, %arg1, "slt") <{predicate = "slt"}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %3 = "arith.select"(%2, %arg0, %arg1) : (tensor<32xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4:2 = "scf.if"(%2) ({
      %5 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %6 = "arith.remsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%5, %6) : (tensor<32xi32>, tensor<32xi32>) -> ()
    }, {
      %7 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %8 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%7, %8) : (tensor<32xi32>, tensor<32xi32>) -> ()
    }) : (tensor<32xi1>) -> (tensor<32xi32>, tensor<32xi32>)
    "tt.return"(%3, %4#1) : (tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()