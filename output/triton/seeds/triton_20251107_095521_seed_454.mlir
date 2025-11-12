"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.remsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %5:2 = "scf.if"(%4) ({
      %6 = "tt.reduce"() <{operation = "add", identity = #arith_integer_attr_cst32_0}> ({
        %7 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%7) : (tensor<16xi32>) -> ()
      }) : () -> tensor<1xi32>
      "scf.yield"(%5#0) : (tensor<1xi32>) -> ()
    }, {
      %8:2 = "scf.if"(%4) ({
        %9 = "arith.divsi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"(%9) : (tensor<16xi32>) -> ()
      }, {
        %10 = "arith.constant"() <{value = dense<16> : tensor<16xi32>}> : () -> tensor<16xi32>
        "scf.yield"(%10) : (tensor<16xi32>) -> ()
      }) : () -> tensor<16xi32>
      "scf.yield"(%8#0) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi1>) -> (tensor<16xi32>)
    "tt.return"(%5#0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()