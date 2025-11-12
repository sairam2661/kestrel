"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "unusual_combination"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_vtensor
      %1 = "torch.constant.none"() : () -> !torch_vtensor
      %2 = "torch.aten.index_select"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.cat"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()