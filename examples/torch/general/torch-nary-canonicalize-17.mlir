"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.int, sym_name = "fold_aten_int_tensor_bool"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<true> : tensor<i1>}> : () -> !torch.vtensor<[],i1>
    %1 = "torch.aten.Int.Tensor"(%0) : (!torch.vtensor<[],i1>) -> !torch.int
    "func.return"(%1) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

