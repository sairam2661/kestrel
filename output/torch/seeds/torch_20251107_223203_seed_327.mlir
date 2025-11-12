"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantint, !torchconstantfloat, !torchvtensor) -> !torchvtensor, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !torchconstantint, %arg1: !torchconstantfloat, %arg2: !torchvtensor):
    %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torchconstantint
    %1 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torchconstantfloat
    %2 = "torch.aten.add.Tensor"(%arg1, %1) : (!torchconstantfloat, !torchconstantfloat) -> !torchconstantfloat
    %3 = "torch.aten.mul.Tensor"(%arg2, %2) : (!torchvtensor, !torchconstantfloat) -> !torchvtensor
    %4 = "torch.aten.index_select"(%3, %0, %arg2) : (!torchvtensor, !torchconstantint, !torchvtensor) -> !torchvtensor
    %5 = "torch.aten.cat"(%arg2, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()