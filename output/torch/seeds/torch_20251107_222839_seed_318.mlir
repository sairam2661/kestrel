"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_unsqueeze_and_view"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.aten.unsqueeze"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.aten.unsqueeze"(%arg1, %2) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.view"(%1, %2) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.view"(%3, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %6 = "torch.constant.none"() : () -> !torch_none
    %7 = "torch.aten.cat"(%4, %5, %6) : (!torch_vtensor, !torch_vtensor, !torch_none) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()