"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_bool) -> !torch_bool, sym_name = "tensor_eq_tensor_bool"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_bool):
      %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %1 = "torch.aten.logical_and"(%0, %arg2) : (!torch_bool, !torch_bool) -> !torch_bool
      "func.return"(%1) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()