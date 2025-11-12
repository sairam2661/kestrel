"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %4 = "torch.aten.index_select"(%arg0, %2, %3) : (!torch_vtensor, !torch_int, !torch_list) -> !torch_vtensor
    %5 = "torch.aten.add.Tensor"(%arg1, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.slice.Tensor"(%5, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %7 = "torch.aten.view"(%6, %3) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()