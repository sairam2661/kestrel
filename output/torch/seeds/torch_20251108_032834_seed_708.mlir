"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_none, !torch_int) -> !torch_vtensor, sym_name = "torch.aten.convolution$transposed_groups"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_list, %arg2: !torch_list, %arg3: !torch_list, %arg4: !torch_bool, %arg5: !torch_none, %arg6: !torch_int):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch_int, !torch_int) -> !torch_list
    %5 = "torch.prim.ListConstruct"(%1, %1) : (!torch_int, !torch_int) -> !torch_list
    %6 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list
    %7 = "torch.aten.convolution"(%arg0, %arg1, %arg5, %6, %4, %5, %arg4, %4, %arg6) : (!torch_vtensor, !torch_list, !torch_none, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()