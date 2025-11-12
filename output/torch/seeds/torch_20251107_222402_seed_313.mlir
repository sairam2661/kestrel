"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.aten.index_select"(%arg0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %3 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.view"(%4, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()