"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_aten_gather"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.gather"(%arg0, %0, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()