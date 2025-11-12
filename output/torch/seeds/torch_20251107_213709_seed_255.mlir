"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "torch.matmul_with_add"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.prim.ListConstruct"(%2, %2) : (!torch_int, !torch_int) -> !torch_list
    %5 = "torch.prim.ListConstruct"(%3, %3) : (!torch_bool, !torch_bool) -> !torch_list
    %6 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.add.Tensor"(%6, %arg0, %4) : (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor
    "func.return"(%7, %6) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()