"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_shuffle"}> ({
  ^bb0(%arg0: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.constant"() <{value = dense<0> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %4 = "scf.if"(%3) ({
      %5 = "arith.constant"() <{value = dense<2> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
      "scf.yield"(%5) : (tensor<2x2xi32>) -> ()
    }, {
      %6 = "arith.constant"() <{value = dense<3> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
      "scf.yield"(%6) : (tensor<2x2xi32>) -> ()
    }) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    %7:2 = "scf.for"(%0, %1, %4, %0, %0) ({
    ^bb0(%arg1: tensor<2x2xi32>, %arg2: tensor<2x2xi32>):
      %8 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "scf.yield"(%8, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> ()
    }) : (tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>) -> (tensor<2x2xi32>, tensor<2x2xi32>)
    "tt.return"(%7#0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()