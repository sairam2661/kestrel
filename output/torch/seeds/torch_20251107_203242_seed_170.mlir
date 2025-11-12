"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_view_and_slice"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %5 = "torch.prim.ListConstruct"(%1, %0, %3, %4, %2) : (!torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list
    %6 = "torch.aten.view"(%arg0, %5) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %7 = "torch.aten.slice.Tensor"(%6, %2, %2, %4) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()