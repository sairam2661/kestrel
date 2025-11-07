"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.int, sym_name = "fold_aten_int_tensor_float"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<3.100000e+00> : tensor<f32>}> : () -> !torch.vtensor<[],f32>
    %1 = "torch.aten.Int.Tensor"(%0) : (!torch.vtensor<[],f32>) -> !torch.int
    "func.return"(%1) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

