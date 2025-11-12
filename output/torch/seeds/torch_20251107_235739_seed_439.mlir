"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_list, !torch_list, !torch_list, !torch_list, !torch_constant, !torch_constant) -> !torch_bool, sym_name = "advanced_tensor_operation"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_list, %arg3: !torch_list, %arg4: !torch_list, %arg5: !torch_list, %arg6: !torch_list, %arg7: !torch_list, %arg8: !torch_list, %arg9: !torch_constant, %arg10: !torch_constant):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.index_select"(%arg0, %arg1, %arg2) : (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor
    %3 = "torch.aten.slice.Tensor"(%2, %arg3, %arg4, %arg5) : (!torch_vtensor, !torch_list, !torch_list, !torch_list) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%3, %arg6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.view"(%4, %arg7) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %6 = "torch.aten.item"(%5) : (!torch_vtensor) -> !torch_constant
    %7 = "torch.aten.eq.Tensor"(%6, %arg9) : (!torch_constant, !torch_constant) -> !torch_bool
    "func.return"(%7) : (!torch_bool) -> ()
  }) : () -> ()
}) : () -> ()