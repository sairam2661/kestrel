"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor, sym_name = "torch.matmul_with_list"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_list):
      %0 = "torch.constant.none"() : () -> !torch_vtensor
      %1 = "torch.aten.view"(%arg0, %arg2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %2 = "torch.aten.view"(%arg1, %arg2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %3 = "torch.aten.matmul"(%1, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()