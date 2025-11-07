"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[2],si64>, sym_name = "torch.vtensor.literal$signed"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1> : tensor<2xsi64>}> : () -> !torch.vtensor<[2],si64>
    "func.return"(%0) : (!torch.vtensor<[2],si64>) -> ()
  }) : () -> ()
}) : () -> ()

