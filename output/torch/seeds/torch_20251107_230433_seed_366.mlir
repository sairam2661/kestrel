"builtin.module"() ({
  "func.func"() <{function_type = (!torchv32, !torchv32) -> !torchv32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !torchv32, %arg1: !torchv32):
    %2 = "torch.constant.float"() <{value = 2.71828 : f32}> : () -> !torchv32
    %3 = "torch.aten.add.Tensor"(%arg0, %2) : (!torchv32, !torchv32) -> !torchv32
    %4 = "torch.aten._shape_as_tensor"(%arg1) : (!torchv32) -> !torchv32
    %5 = "torch.constant.float"() <{value = 1.41421 : f32}> : () -> !torchv32
    %6 = "torch.aten.mul.Tensor"(%3, %5) : (!torchv32, !torchv32) -> !torchv32
    %7 = "torch.constant.float"() <{value = 1 : i64}> : () -> !torchv32
    %8 = "torch.aten.slice.Tensor"(%6, %7, %7, %7) : (!torchv32, !torchv32, !torchv32, !torchv32) -> !torchv32
    "func.return"(%8) : (!torchv32) -> ()
  }) : () -> ()
}) : () -> ()