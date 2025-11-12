"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_cat"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_list
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_list
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_list, !torch_list) -> !torch_list
      %3 = "torch.aten.cat"(%2) : (!torch_list) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()