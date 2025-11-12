"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensor, sym_name = "torch_aten_add_Tensor"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %5 = "torch.aten.constant"(%4, %3, %3, %3) : (!torch_list_int, !torch_bool, !torch_bool, !torch_bool) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()