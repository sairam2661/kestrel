"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_dynamic_cat"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %4 = "torch.aten.cat"(%3, %0) : (!torch_list, !torch_int) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()