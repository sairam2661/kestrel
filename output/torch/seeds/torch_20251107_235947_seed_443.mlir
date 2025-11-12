"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "concat_and_slice"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_list_vtensor
      %3 = "torch.aten.cat"(%2, %0) : (!torch_list_vtensor, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.index_select"(%3, %1, %0) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()