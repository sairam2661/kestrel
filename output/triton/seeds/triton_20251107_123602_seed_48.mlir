"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xf32>) -> (tensor<64xi32>, tensor<64xf32>), sym_name = "mixed_type_operations"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xf32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<3.5> : tensor<64xf32>}> : () -> tensor<64xf32>
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.addf"(%arg1, %1) : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
      %5 = "arith.mulf"(%arg1, %1) : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
      %6 = "scf.if"(%arg0) ({
        %7 = "arith.subi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        %8 = "arith.subf"(%5, %1) : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
        "scf.yield"(%7, %8) : (tensor<64xi32>, tensor<64xf32>) -> ()
      }, {
        %9 = "arith.divsi"(%3, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        %10 = "arith.divf"(%5, %1) : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
        "scf.yield"(%9, %10) : (tensor<64xi32>, tensor<64xf32>) -> ()
      }) : (tensor<64xi32>) -> (tensor<64xi32>, tensor<64xf32>)
      "tt.return"(%6#0, %6#1) : (tensor<64xi32>, tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()