"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_int, sym_name = "custom_op"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %1 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.mul"(%1, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %3 = "torch.aten.sum"(%2) : (!torch_vtensor) -> !torch_int
    "func.return"(%3) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()