"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.cat_and_add"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()