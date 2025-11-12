"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.xori"(%1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.muli"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.cmpi"(%3, %0) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %5 = "arith.select"(%4, %3, %2) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.divsi"(%5, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "scf.if"(%4) ({
      %8 = "arith.subi"(%5, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%8) : (tensor<128xi32>) -> ()
    }, {
      "scf.yield"(%6) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi1>) -> tensor<128xi32>
    "tt.return"(%7) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()