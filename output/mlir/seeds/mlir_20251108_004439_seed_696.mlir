"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi64>) -> tensor<4xi32>, sym_name = "complex_spirv_interaction"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi64>):
      %0 = "arith.addi"(%arg0, %arg0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %1 = "tosa.cast"(%0) : (tensor<4xi32>) -> tensor<4xi64>
      %2 = "arith.addi"(%1, %arg1) : (tensor<4xi64>, tensor<4xi64>) -> tensor<4xi64>
      %3 = "spirv.as"(%2) : (tensor<4xi64>) -> tensor<4xi32>
      "spirv.ReturnValue"(%3) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()