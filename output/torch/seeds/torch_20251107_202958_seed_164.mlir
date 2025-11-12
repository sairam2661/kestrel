"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_convolution"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %4 = "torch.prim.ListConstruct"(%0, %1, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %5 = "torch.prim.ListConstruct"(%2, %3, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %6 = "torch.prim.ListConstruct"(%3, %0, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %7 = "torch.prim.ListConstruct"() : () -> !torch_list
    %8 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %9 = "torch.aten.convolution"(%arg0, %arg1, %7, %4, %5, %6, %8, %7, %2) : (!torch_vtensor, !torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int) -> !torch_vtensor
    "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()