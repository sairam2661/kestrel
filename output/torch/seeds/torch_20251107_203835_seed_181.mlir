"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_convolution"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %5 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list
    %6 = "torch.prim.ListConstruct"(%3, %1) : (!torch_int, !torch_int) -> !torch_list
    %7 = "torch.prim.ListConstruct"(%4, %2) : (!torch_int, !torch_int) -> !torch_list
    %8 = "torch.prim.ListConstruct"() : () -> !torch_list
    %9 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %10 = "torch.aten.convolution"(%arg0, %arg1, %0, %5, %6, %7, %9, %8, %3) : (!torch_vtensor, !torch_vtensor, !torch_none, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int) -> !torch_vtensor
    "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()