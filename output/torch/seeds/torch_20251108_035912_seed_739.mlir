"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int) -> (!torch_vtensor, !torch_int), sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %1 = "torch.aten.mul"(%0, %arg1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %2 = "torch.aten.div"(%1, %arg1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %3 = "torch.aten.sub"(%2, %arg1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.neg"(%3) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%4, %arg1) : (!torch_vtensor, !torch_int) -> ()
  }) : () -> ()
}) : () -> ()