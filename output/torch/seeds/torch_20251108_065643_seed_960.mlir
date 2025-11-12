"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_bool) -> !torch_constant_bool, sym_name = "torch.aten.eq.Tensor$bool_tensors"}> ({
    ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_bool):
      %2 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_constant_bool, !torch_constant_bool) -> !torch_constant_bool
      "func.return"(%2) : (!torch_constant_bool) -> ()
  }) : () -> ()
}) : () -> ()