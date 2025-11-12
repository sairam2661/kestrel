"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "triton_complex_op_combo"}> ({
  ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>, %arg2: tensor<32x32xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %1 = "arith.subi"(%0, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %2 = "arith.muli"(%1, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %3 = "arith.divsi"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %4 = "arith.remsi"(%3, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %5 = "arith.cmpi"(%4, %arg0, "eq") : (tensor<32x32xi32>, tensor<32x32xi32>, i32) -> tensor<32x32xi1>
    %6 = "scf.if"(%5) ({
      %7 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      "scf.yield"(%7) : (tensor<32x32xi32>) -> ()
    }, {
      %8 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      "scf.yield"(%8) : (tensor<32x32xi32>) -> ()
    }) : (tensor<32x32xi1>) -> (tensor<32x32xi32>)
    "tt.return"(%6) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()