"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[1,512],si64>, sym_name = "torch.vtensor.literal_si64$basic"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<-1> : tensor<1x512xsi64>}> : () -> !torch.vtensor<[1,512],si64>
    "func.return"(%0) : (!torch.vtensor<[1,512],si64>) -> ()
  }) : () -> ()
}) : () -> ()

