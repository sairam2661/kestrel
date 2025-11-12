"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "unusual_combination"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
    %3 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %4 = "torch.aten.add"(%3, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.sin"(%4) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()