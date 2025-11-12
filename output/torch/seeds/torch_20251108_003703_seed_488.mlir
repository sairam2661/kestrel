"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_operation"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
    %5 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list
    %6 = "torch.prim.ListConstruct"(%2, %2) : (!torch_int, !torch_int) -> !torch_list
    %7:2 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor)
    %8 = "torch.aten.add"(%arg0, %7#0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %9 = "torch.aten.div.Tensor"(%8, %7#1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %10 = "torch.aten.mul.Tensor"(%9, %7#0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %11 = "torch.aten.sub.Tensor"(%10, %7#1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %12 = "torch.aten.gelu"(%11, %3) : (!torch_vtensor, !torch_bool) -> !torch_vtensor
    "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()