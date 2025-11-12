"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_none, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int) -> !torch_vtensor, sym_name = "torch.aten.convolution$transposed_basic"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_none, %arg3: !torch_list, %arg4: !torch_list, %arg5: !torch_list, %arg6: !torch_bool, %arg7: !torch_list, %arg8: !torch_int):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list
    %4 = "torch.prim.ListConstruct"(%2, %1) : (!torch_int, !torch_int) -> !torch_list
    %5 = "torch.aten.convolution"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8) : (!torch_vtensor, !torch_vtensor, !torch_none, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()