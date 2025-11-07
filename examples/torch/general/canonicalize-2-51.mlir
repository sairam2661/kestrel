"builtin.module"() ({
  "func.func"() <{function_type = () -> (!torch.vtensor<[4],i1>, !torch.vtensor<[4],i1>, !torch.vtensor<[4],i1>), sym_name = "aten_tensor_tensor_ge"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[127, -128, -127, -126]> : tensor<4xsi8>}> : () -> !torch.vtensor<[4],si8>
    %1 = "torch.vtensor.literal"() <{value = dense<[127, 128, 129, 130]> : tensor<4xui8>}> : () -> !torch.vtensor<[4],ui8>
    %2 = "torch.vtensor.literal"() <{value = dense<[1.270000e+02, 1.280000e+02, 1.290000e+02, 1.300000e+02]> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %3 = "torch.constant.int"() <{value = 128 : i64}> : () -> !torch.int
    %4 = "torch.constant.float"() <{value = 1.280000e+02 : f64}> : () -> !torch.float
    %5 = "torch.aten.ge.Scalar"(%0, %3) : (!torch.vtensor<[4],si8>, !torch.int) -> !torch.vtensor<[4],i1>
    %6 = "torch.aten.ge.Scalar"(%1, %3) : (!torch.vtensor<[4],ui8>, !torch.int) -> !torch.vtensor<[4],i1>
    %7 = "torch.aten.ge.Scalar"(%2, %4) : (!torch.vtensor<[4],f32>, !torch.float) -> !torch.vtensor<[4],i1>
    "func.return"(%5, %6, %7) : (!torch.vtensor<[4],i1>, !torch.vtensor<[4],i1>, !torch.vtensor<[4],i1>) -> ()
  }) : () -> ()
}) : () -> ()

