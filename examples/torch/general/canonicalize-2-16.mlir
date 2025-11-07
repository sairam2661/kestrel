"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.float, sym_name = "torch.aten.FloatImplicit$canonicalize_literal_0d"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<f64>}> : () -> !torch.vtensor<[],f64>
    %1 = "torch.aten.FloatImplicit"(%0) : (!torch.vtensor<[],f64>) -> !torch.float
    "func.return"(%1) : (!torch.float) -> ()
  }) : () -> ()
}) : () -> ()

