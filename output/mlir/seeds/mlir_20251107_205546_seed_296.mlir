"builtin.module"() ({
  "spirv.func"() <{function_type = (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<3x3xi32>, %arg1: tensor<3x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    %1 = "arith.mulsi"(%0, %0) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    %2 = "arith.addi"(%1, %arg0) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    %3 = "spirv.ReturnValue"(%2) : (tensor<3x3xi32>) -> tensor<3x3xi32>
    "scf.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()