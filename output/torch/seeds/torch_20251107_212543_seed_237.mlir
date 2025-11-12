"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.prims.cat"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_int
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %3 = "torch.aten.cat"(%arg0, %arg1, %2) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()