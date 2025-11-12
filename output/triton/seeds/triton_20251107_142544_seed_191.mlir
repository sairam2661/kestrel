"builtin.module"() ({
  "tt.func"() <{function_type = (i1, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "unusual_combinations"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<10xi32>, %arg2: tensor<10xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "arith.divsi"(%arg1, %0) <{overflowFlags = #arith_overflow_modeAny}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %2 = "arith.muli"(%arg2, %0) <{overflowFlags = #arith_overflow_modeAny}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "arith.xori"(%arg1, %arg2) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %4 = "scf.if"(%arg0) ({
      %5 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_modeAny}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
      "scf.yield"(%5) : (tensor<10xi32>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<10xi32>) -> ()
    }) : (i1) -> tensor<10xi32>
    %6 = "arith.select"(%arg0, %2, %4) : (i1, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "tt.return"(%6) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()