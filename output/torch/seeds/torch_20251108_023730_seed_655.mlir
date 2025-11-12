"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_index_select"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch_int, !torch_int) -> !torch_list
      %5 = "torch.aten.index_select"(%arg0, %0, %1) : (!torch_vtensor, !torch_int, !torch_list) -> !torch_vtensor
      %6 = "torch.aten.index_select"(%arg1, %0, %4) : (!torch_vtensor, !torch_int, !torch_list) -> !torch_vtensor
      %7 = "torch.aten.cat"(%5, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()