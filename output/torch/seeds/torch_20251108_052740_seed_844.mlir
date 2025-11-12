"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> !torch_vtensor, sym_name = "torch_complex_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
      %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
      %1 = "torch.prim.ListConstruct"(%0, %arg1) : (!torch_int, !torch_int) -> !torch_list_int
      %2 = "torch.aten.reshape"(%arg0, %1) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      %3 = "torch.aten.prod"(%2) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()