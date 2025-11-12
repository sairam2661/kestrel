"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_like, !torch_vtensor_like) -> !torch_vtensor_like, sym_name = "torch.aten.add"}> ({
    ^bb0(%arg0: !torch_vtensor_like, %arg1: !torch_vtensor_like):
      %c = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_vtensor_like
      %d = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torch_vtensor_like
      %0 = "torch.aten.add"(%arg0, %c) : (!torch_vtensor_like, !torch_vtensor_like) -> !torch_vtensor_like
      %1 = "torch.aten.add"(%0, %d) : (!torch_vtensor_like, !torch_vtensor_like) -> !torch_vtensor_like
      "func.return"(%1) : (!torch_vtensor_like) -> ()
  }) : () -> ()
}) : () -> ()