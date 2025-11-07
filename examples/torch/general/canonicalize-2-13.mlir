"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.number, sym_name = "torch.aten.ScalarImplicit$canonicalize_literal_0d"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %1 = "torch.aten.ScalarImplicit"(%0) : (!torch.vtensor<[],si64>) -> !torch.number
    "func.return"(%1) : (!torch.number) -> ()
  }) : () -> ()
}) : () -> ()

