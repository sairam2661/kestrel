"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.vtensor, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.vtensor, sym_name = "op_with_optional_tensor_arg$none"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.vtensor, %arg2: !torch.list<int>, %arg3: !torch.list<int>, %arg4: !torch.list<int>, %arg5: !torch.bool, %arg6: !torch.list<int>, %arg7: !torch.int):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.aten._convolution.deprecated"(%arg0, %arg1, %0, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %1, %1, %1) : (!torch.vtensor, !torch.vtensor, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int, !torch.bool, !torch.bool, !torch.bool) -> !torch.vtensor
    "func.return"(%2) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

