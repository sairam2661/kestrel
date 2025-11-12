"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>, sym_name = "xor_combine"}> ({
    ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xi1>):
      %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>
      "func.return"(%0) : (tensor<2xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>) -> tensor<2xi1>, sym_name = "invert_bits"}> ({
    ^bb0(%arg0: tensor<2xi1>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<2xi1>}> : () -> tensor<2xi1>
      %1 = "arith.subi"(%0, %arg0) : (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>
      "func.return"(%1) : (tensor<2xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>, sym_name = "xor_invert"}> ({
    ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xi1>):
      %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>
      %1 = "func.call"(%0) <{callee = @invert_bits}> : (tensor<2xi1>) -> tensor<2xi1>
      "func.return"(%1) : (tensor<2xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>, sym_name = "xor_invert_complex"}> ({
    ^bb0(%arg0: tensor<2xi1>, %arg1: tensor<2xi1>):
      %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>
      %1 = "func.call"(%0) <{callee = @invert_bits}> : (tensor<2xi1>) -> tensor<2xi1>
      %2 = "arith.cmpi"(%1, %arg0, "ne") : (tensor<2xi1>, tensor<2xi1>) -> tensor<2xi1>
      %3 = "func.call"(%2) <{callee = @invert_bits}> : (tensor<2xi1>) -> tensor<2xi1>
      "func.return"(%3) : (tensor<2xi1>) -> ()
  }) : () -> ()
}) : () -> ()