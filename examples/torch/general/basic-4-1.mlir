"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[],f32>, sym_name = "torch.vtensor.literal$basic"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<f32>}> : () -> !torch.vtensor<[],f32>
    "func.return"(%0) : (!torch.vtensor<[],f32>) -> ()
  }) : () -> ()
}) : () -> ()

