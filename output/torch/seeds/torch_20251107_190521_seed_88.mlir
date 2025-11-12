"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "unusual_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %2 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_int
      %3 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.view"(%3, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()