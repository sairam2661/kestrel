"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint, !torchlist, !torchlist, !torchlist, !torchlist, !torchbool) -> !torchvtensor, sym_name = "torch.aten.max_pool2d_with_indices$full_dim_indivisible_by_stride_without_sliced_input"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchint, %arg2: !torchlist, %arg3: !torchlist, %arg4: !torchlist, %arg5: !torchlist, %arg6: !torchbool):
    %0 = "torch.aten.max_pool2d_with_indices"(%arg0, %arg2, %arg3, %arg4, %arg5, %arg6) : (!torchvtensor, !torchlist, !torchlist, !torchlist, !torchlist, !torchbool) -> (!torchvtensor, !torchvtensor)
    "func.return"(%0#0) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()