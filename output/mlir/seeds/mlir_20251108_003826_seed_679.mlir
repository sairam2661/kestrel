"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_add"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "func.return"(%0) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "transpose"}> ({
    ^bb0(%arg2: tensor<2x2xi32>):
      %1 = "arith.constant"() <{value = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
      %2 = "arith.muli"(%arg2, %1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    ^bb0():
      %3 = "arith.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
      %4 = "arith.constant"() <{value = dense<[5, 6, 7, 8]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
      %5 = "func.call"() <{callee = "matrix_add", arguments = ["%3", "%4"]}> : () -> tensor<2x2xi32>
      %6 = "func.call"() <{callee = "transpose", arguments = ["%5"]}> : () -> tensor<2x2xi32>
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()