"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.add_and_slice"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.float"() <{value = 1.0 : f32}> : () -> !torch_vtensor
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
      %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
      %4 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_vtensor
      %5 = "torch.aten.slice.Tensor"(%1, %2, %3, %4) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()