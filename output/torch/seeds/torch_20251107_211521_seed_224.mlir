"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint, !torchint, !torchint) -> !torchint, sym_name = "fuzz_complex_op_sequence"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint, %arg2: !torchint, %arg3: !torchint):
    %c1_i8 = "torch.constant.int"() <{value = 1 : i8}> : () -> !torchint
    %c2_i8 = "torch.constant.int"() <{value = 2 : i8}> : () -> !torchint
    %c3_i8 = "torch.constant.int"() <{value = 3 : i8}> : () -> !torchint
    %c4_i8 = "torch.constant.int"() <{value = 4 : i8}> : () -> !torchint
    %c5_i8 = "torch.constant.int"() <{value = 5 : i8}> : () -> !torchint
    %add1 = "torch.aten.add.Tensor"(%arg0, %arg1, %c1_i8) : (!torchint, !torchint, !torchint) -> !torchint
    %add2 = "torch.aten.add.Tensor"(%add1, %arg2, %c2_i8) : (!torchint, !torchint, !torchint) -> !torchint
    %add3 = "torch.aten.add.Tensor"(%add2, %arg3, %c3_i8) : (!torchint, !torchint, !torchint) -> !torchint
    %c0_i8 = "torch.constant.int"() <{value = 0 : i8}> : () -> !torchint
    %mul1 = "torch.aten.mul.Tensor"(%add3, %c4_i8) : (!torchint, !torchint) -> !torchint
    %add4 = "torch.aten.add.Tensor"(%mul1, %c5_i8, %c0_i8) : (!torchint, !torchint, !torchint) -> !torchint
    "func.return"(%add4) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()