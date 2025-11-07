"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.int, sym_name = "fold_aten_int_tensor_int"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<3> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %1 = "torch.aten.Int.Tensor"(%0) : (!torch.vtensor<[],si64>) -> !torch.int
    "func.return"(%1) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

