"builtin.module"() ({
  "func.func"() <{function_type = (!torchv16, !torchv32) -> !torchi1, sym_name = "custom_fuzzing_func"}> ({
    ^bb0(%arg0: !torchv16, %arg1: !torchv32):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torchi64
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchi64) -> !torchv64
      %2 = "torch.aten.eq.Tensor"(%arg0, %1) : (!torchv16, !torchv64) -> !torchi1
      %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %0, %0) : (!torchv32, !torchi64, !torchi64, !torchi64) -> !torchv32
      %4 = "torch.aten.cat"(%arg0, %3) : (!torchv16, !torchv32) -> !torchv16
      "func.return"(%2, %4) : (!torchi1, !torchv16) -> ()
  }) : () -> ()
}) : () -> ()