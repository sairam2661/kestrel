"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, i1) -> tensor<4xi32>, sym_name = "mixed_arith_and_control"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: i1):
    %0 = "scf.if"(%arg2) ({
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%2) : (tensor<4xi32>) -> ()
    }, {
      %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %4 = "arith.mulif"(%3, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "scf.yield"(%4) : (tensor<4xi32>) -> ()
    }) : (i1) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()