"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<4x4xi32>, tensor<1xi32>) -> tensor<4x4xi32>
    %3 = "arith.cmpi"(%2, %2, "slt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
    %4 = "tosa.const"() <{values = dense<1> : tensor<4x4xi1>}> : () -> tensor<4x4xi1>
    %5 = "arith.addi"(%3, %4) : (tensor<4x4xi1>, tensor<4x4xi1>) -> tensor<4x4xi1>
    "func.return"(%5) : (tensor<4x4xi1>) -> ()
  }) : () -> ()
}) : () -> ()