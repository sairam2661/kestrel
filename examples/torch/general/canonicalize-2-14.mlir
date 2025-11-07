"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.number, sym_name = "torch.aten.ScalarImplicit$canonicalize_literal_0d_float"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<f64>}> : () -> !torch.vtensor<[],f64>
    %1 = "torch.aten.ScalarImplicit"(%0) : (!torch.vtensor<[],f64>) -> !torch.number
    "func.return"(%1) : (!torch.number) -> ()
  }) : () -> ()
}) : () -> ()

