"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
    %3 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %5 = "torch.aten.size.int"(%arg1, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %6 = "torch.prim.ListConstruct"(%4, %5) : (!torch_int, !torch_int) -> !torch_list_int
    %7 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
    %8 = "torch.aten.view"(%arg1, %6) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
    %9 = "torch.aten.add"(%7, %8) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %10 = "torch.aten.mul"(%9, %2) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()