"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],i1>, sym_name = "aten_eq_tensor_splats_int_false"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<4> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<5> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],i1>
    "func.return"(%2) : (!torch.vtensor<[4],i1>) -> ()
  }) : () -> ()
}) : () -> ()

