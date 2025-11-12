"builtin.module"() ({
  "func.func"() <{function_type = (!torchConstantFloat, !torchConstantFloat, !torchConstantFloat) -> !torchConstantFloat, sym_name = "fuzzing_complex_f32_ops"}> ({
  ^bb0(%arg0: !torchConstantFloat, %arg1: !torchConstantFloat, %arg2: !torchConstantFloat):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchConstantFloat, !torchConstantFloat) -> !torchConstantFloat
    %1 = "torch.aten.mul.Tensor"(%arg2, %0) : (!torchConstantFloat, !torchConstantFloat) -> !torchConstantFloat
    %2 = "torch.aten.eq.Tensor"(%1, %arg0) : (!torchConstantFloat, !torchConstantFloat) -> !torchConstantFloat
    %3 = "torch.aten.to.dtype"(%2, false, false, 1) : (!torchConstantFloat, !torchConstantBool, !torchConstantBool, !torchConstantInt) -> !torchConstantFloat
    "func.return"(%3) : (!torchConstantFloat) -> ()
  }) : () -> ()
}) : () -> ()