"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.cat_dialect_interaction"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.str"() <{value = "tensor"}> : () -> !torch_str
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %3 = "torch.aten.cat"(%2) : (!torch_list) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()