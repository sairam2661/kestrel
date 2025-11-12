"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_fusion"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.constant.str"() <{value = "test_str"}> : () -> !torchstr
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %2 = "torch.aten._shape_as_tensor"(%arg0) : (!torchvtensor) -> !torchlist
    %3 = "torch.aten.size.int"(%arg0, %1) : (!torchvtensor, !torchint) -> !torchint
    %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torchint) -> !torchvtensor
    %5 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor
    %6 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %3, %4, %1, %0) : (!torchvtensor, !torchint, !torchvtensor, !torchint, !torchstr) -> !torchvtensor
    "func.return"(%6) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()