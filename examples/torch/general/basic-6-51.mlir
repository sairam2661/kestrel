"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[1,512],si32>, sym_name = "torch.vtensor.literal_si32$basic"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<-1> : tensor<1x512xsi32>}> : () -> !torch.vtensor<[1,512],si32>
    "func.return"(%0) : (!torch.vtensor<[1,512],si32>) -> ()
  }) : () -> ()
}) : () -> ()

