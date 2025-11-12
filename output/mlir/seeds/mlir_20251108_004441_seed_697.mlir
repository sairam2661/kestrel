"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "fuzz_spirv_return"}> ({
    ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>):
      %const0 = "tosa.const"() <{values = dense<1> : tensor<1xi32>}> : () -> tensor<1xi32>
      %const1 = "tosa.const"() <{values = dense<2> : tensor<1xi32>}> : () -> tensor<1xi32>
      %add0 = "tosa.add"(%arg0, %const0) : (tensor<5xi32>, tensor<1xi32>) -> tensor<5xi32>
      %mul0 = "tosa.mul"(%add0, %const1) : (tensor<5xi32>, tensor<1xi32>) -> tensor<5xi32>
      %sub0 = "tosa.sub"(%mul0, %arg1) : (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>
      "spirv.ReturnValue"(%sub0) : (tensor<5xi32>) -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()