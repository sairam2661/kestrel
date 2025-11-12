"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_torch_operation"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_list
      %1 = "torch.prim.ListConstruct"(%0 : !torch_list) ({"value"  (":") { type = !torch_list } : () -> !torch_list})
      : (!torch_list) -> !torch_list
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %5 = "torch.aten.cat"(%3, %4) : (!torch_vtensor, !torch_bool) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()