"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_custom_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_vtensor
      %1 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_vtensor
      %2 = "torch.aten.add"(%arg0, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.mul"(%2, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.sub"(%3, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()