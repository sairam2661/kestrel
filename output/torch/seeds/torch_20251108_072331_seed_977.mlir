"builtin.module"() ({
  "func.func"() <{function_type = (!torchFLOAT8E5M2, !torchFLOAT8E4M3FN) -> !torchFLOAT8E5M2, sym_name = "fuzz_add_with_quantized_tensors"}> ({
  ^bb0(%arg0: !torchFLOAT8E5M2, %arg1: !torchFLOAT8E4M3FN):
    %0 = "torch.constant.float"() <{value = 1.000000e-01 : f64}> : () -> !torchfloat
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1) : (!torchFLOAT8E5M2, !torchfloat, !torchint) -> !torchFLOAT8E5M2
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %2) : (!torchFLOAT8E4M3FN, !torchfloat, !torchint) -> !torchFLOAT8E4M3FN
    %5 = "torch.aten.add.Tensor"(%3, %4, %0) : (!torchFLOAT8E5M2, !torchFLOAT8E4M3FN, !torchfloat) -> !torchFLOAT8E5M2
    "func.return"(%5) : (!torchFLOAT8E5M2) -> ()
  }) : () -> ()
}) : () -> ()