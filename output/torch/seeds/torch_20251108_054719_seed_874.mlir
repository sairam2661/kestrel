"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector, !torchvvector, !torchvvector) -> !torchvvector, sym_name = "torch_custom_op"}> ({
  ^bb0(%arg0: !torchvvector, %arg1: !torchvvector, %arg2: !torchvvector):
    %0 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torchvvector, !torchvvector, !torchvvector) -> !torchlist
    %2 = "torch.aten._make_per_tensor_quantized_tensor"(%1, %0) : (!torchlist, !torchstr) -> !torchvvector
    %3 = "torch.prim.NumToTensor.Scalar"() <{value = 42}> : () -> !torchnum
    %4 = "torch.aten.cat"(%2, %3) : (!torchvvector, !torchnum) -> !torchvvector
    "func.return"(%4) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()