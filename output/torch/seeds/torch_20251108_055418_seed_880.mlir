"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %3 = "torch.aten.sin"(%2) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %5 = "torch.aten.pow.Tensor"(%3, %4) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()