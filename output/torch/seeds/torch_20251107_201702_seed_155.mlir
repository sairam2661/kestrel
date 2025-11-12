"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int) -> !torch_vtensor, sym_name = "conv_with_complex_list_args"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_list, %arg3: !torch_list, %arg4: !torch_list, %arg5: !torch_bool, %arg6: !torch_list, %arg7: !torch_int):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.prim.ListConstruct"(%1, %2) : (!torch_int, !torch_int) -> !torch_list
    %5 = "torch.aten._convolution.deprecated"(%arg0, %arg1, %3, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %0, %0, %0) : (!torch_vtensor, !torch_vtensor, !torch_none, !torch_list, !torch_list, !torch_list, !torch_bool, !torch_list, !torch_int, !torch_bool, !torch_bool, !torch_bool) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()