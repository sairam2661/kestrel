"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_op_chain"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.index_select"(%arg1, %1, %3) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.slice.Tensor"(%arg0, %1, %0, %1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.add.Tensor"(%4, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()