"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add_and_view"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.aten.view"(%0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()