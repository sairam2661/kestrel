"builtin.module"() ({
  "func.func"() <{function_type = () -> (!torch.vtensor<[4],i1>, !torch.vtensor<[4],i1>), sym_name = "aten_tensor_scalar_lt"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<1> : tensor<4xsi8>}> : () -> !torch.vtensor<[4],si8>
    %1 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %4 = "torch.aten.lt.Scalar"(%0, %2) : (!torch.vtensor<[4],si8>, !torch.int) -> !torch.vtensor<[4],i1>
    %5 = "torch.aten.lt.Scalar"(%1, %3) : (!torch.vtensor<[4],f32>, !torch.float) -> !torch.vtensor<[4],i1>
    "func.return"(%4, %5) : (!torch.vtensor<[4],i1>, !torch.vtensor<[4],i1>) -> ()
  }) : () -> ()
}) : () -> ()

