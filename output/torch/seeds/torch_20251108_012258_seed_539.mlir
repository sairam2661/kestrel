"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_aten_add_view"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 224 : i64}> : () -> !torch_int
    %2 = "torch.constant.str"() <{value = "reflect"}> : () -> !torch_str
    %3 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
    %5 = "torch.aten.add.Tensor"(%4, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()