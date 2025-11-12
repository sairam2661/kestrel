"builtin.module"() ({
  "func.func"() <{function_type = (!torchTensor, !torchTensor) -> !torchTensor, sym_name = "complex_fuzz_test"}> ({
    ^bb0(%arg0: !torchTensor, %arg1: !torchTensor):
      %size0 = "torch.aten.size.int"(%arg0) : (!torchTensor) -> i64
      %size1 = "torch.aten.size.int"(%arg1) : (!torchTensor) -> i64
      %tensor0 = "torch.constant.int"() <{value = 0}> : () -> i64
      %tensor1 = "torch.constant.int"() <{value = 1}> : () -> i64
      %tensor2 = "torch.constant.int"() <{value = 2}> : () -> i64
      %tensor3 = "torch.constant.int"() <{value = 3}> : () -> i64
      %tensor4 = "torch.constant.int"() <{value = 4}> : () -> i64
      %add0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchTensor, !torchTensor) -> !torchTensor
      %eq0 = "torch.aten.eq.Tensor"(%size0, %tensor4) : (i64, i64) -> i1
      %add1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchTensor, !torchTensor) -> !torchTensor
      %eq1 = "torch.aten.eq.Tensor"(%size1, %tensor4) : (i64, i64) -> i1
      %cat0 = "torch.aten.cat"(%add0, %add1) : (!torchTensor, !torchTensor) -> !torchTensor
      "func.return"(%cat0) : (!torchTensor) -> ()
  }) : () -> ()
}) : () -> ()