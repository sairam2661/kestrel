"builtin.module"() ({
  "func.func"() <{function_type = (!torchTensor, !torchTensor) -> !torchTensor, sym_name = "fuzz_edge_case_function"}> ({
    ^bb0(%arg0: !torchTensor, %arg1: !torchTensor):
      %0 = "torch.aten.size.int"(%arg0, %1) : (!torchTensor, !torchInt) -> !torchInt
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchInt
      %2 = "torch.aten.cat"(%arg0, %1) : (!torchTensor, !torchInt) -> !torchTensor
      %3 = "torch.aten._shape_as_tensor"(%arg1) : (!torchTensor) -> !torchTensor
      %4 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchInt) -> !torchTensor
      %5 = "torch.aten.eq.Tensor"(%3, %4) : (!torchTensor, !torchTensor) -> !torchTensor
      %6 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %5) : (!torchTensor, !torchInt, !torchTensor) -> !torchTensor
      %7 = "torch.aten.add.Tensor"(%arg0, %6) : (!torchTensor, !torchTensor) -> !torchTensor
      "func.return"(%7) : (!torchTensor) -> ()
  }) : () -> ()
}) : () -> ()