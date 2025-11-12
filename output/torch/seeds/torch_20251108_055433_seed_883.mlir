"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int, !torch_int) -> (!torch_vtensor, !torch_int), sym_name = "test_func"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_int):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %1 = "torch.aten.mul"(%0, %arg2) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %2 = "torch.aten.sin"(%1) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.neg"(%2) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%3, %arg2) : (!torch_vtensor, !torch_int) -> ()
  }) : () -> ()
}) : () -> ()