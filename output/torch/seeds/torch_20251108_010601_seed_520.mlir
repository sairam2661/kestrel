"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_operation"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %1, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.view"(%arg1, %2) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.index_select"(%5, %1, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %7 = "torch.aten.view"(%6, %2, %2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()