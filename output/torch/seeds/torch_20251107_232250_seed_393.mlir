"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor), sym_name = "torch_complex_slice_and_cat"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 20 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.prim.ListConstruct"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_list
    %6 = "torch.aten.cat"(%5, %0) : (!torch_list, !torch_int) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()