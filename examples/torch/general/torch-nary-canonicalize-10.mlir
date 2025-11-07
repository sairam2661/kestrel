"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_mul_splat_int"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<7> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<11> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],si64>
    "func.return"(%2) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

