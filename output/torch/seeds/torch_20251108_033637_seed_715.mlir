"builtin.module"() ({
  "func.func"() <{
    function_type = (!torch_CONSTANT_BOOL, !torch_CONSTANT_INT, !torch_CONSTANT_FLOAT) -> !torch_CONSTANT_FLOAT,
    sym_name = "torch.fuzz.complex"
  }> ({
    ^bb0(%arg0: !torch_CONSTANT_BOOL, %arg1: !torch_CONSTANT_INT, %arg2: !torch_CONSTANT_FLOAT):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_CONSTANT_INT
      %1 = "torch.constant.bool"() <{value = false}> : () -> !torch_CONSTANT_BOOL
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_CONSTANT_FLOAT
      %3 = "torch.prim.NumToTensor.Scalar"(%0) <{value = 2 : i64}> : (!torch_CONSTANT_INT) -> !torch_CONSTANT_FLOAT
      %4 = "torch.aten.add.Tensor"(%arg2, %3) : (!torch_CONSTANT_FLOAT, !torch_CONSTANT_FLOAT) -> !torch_CONSTANT_FLOAT
      %5 = "func.return"(%4) : (!torch_CONSTANT_FLOAT) -> ()
  }) : () -> ()
}) : () -> ()