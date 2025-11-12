"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{nsw = true}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %2 = "arith.muli"(%0, %1) <{nsw = true}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %4 = "arith.subi"(%2, %3) <{nsw = true}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%4) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()