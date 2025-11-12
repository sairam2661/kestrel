"builtin.module"() ({
  "func.func"() <{function_type = (!torchFLOAT_TYPE, !torchFLOAT_TYPE, !torchFLOAT_TYPE) -> !torchFLOAT_TYPE, sym_name = "complex_tensor_op"}> ({
    ^bb0(%arg0: !torchFLOAT_TYPE, %arg1: !torchFLOAT_TYPE, %arg2: !torchFLOAT_TYPE):
      %0 = "torch.constant.none"() : () -> !torchNONE
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torchBOOL
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchINT
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchINT
      %4 = "torch.constant.float"() <{value = 1.5}> : () -> !torchFLOAT_TYPE
      %5 = "torch.constant.float"() <{value = 2.5}> : () -> !torchFLOAT_TYPE
      %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchFLOAT_TYPE, !torchFLOAT_TYPE) -> !torchFLOAT_TYPE
      %7 = "torch.aten.sub.Tensor"(%arg2, %6) : (!torchFLOAT_TYPE, !torchFLOAT_TYPE) -> !torchFLOAT_TYPE
      %8 = "torch.aten.mul.Tensor"(%7, %4) : (!torchFLOAT_TYPE, !torchFLOAT_TYPE) -> !torchFLOAT_TYPE
      %9 = "torch.aten.add.Tensor"(%8, %5) : (!torchFLOAT_TYPE, !torchFLOAT_TYPE) -> !torchFLOAT_TYPE
      "func.return"(%9) : (!torchFLOAT_TYPE) -> ()
  }) : () -> ()
}) : () -> ()