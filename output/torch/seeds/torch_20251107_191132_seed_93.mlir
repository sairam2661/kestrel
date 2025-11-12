"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_index_select"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
      %1 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
      %3 = "torch.aten.index_select"(%arg0, %0, %2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %5 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
      %6 = "torch.aten.index_select"(%arg1, %0, %5) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten.cat"(%3, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()