"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint, !torchint) -> !torchint, sym_name = "test_complex_interaction"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint, %arg2: !torchint):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    %3 = "torch.aten.eq.Tensor"(%2, %arg2) : (!torchint, !torchint) -> !torchbool
    %4 = "torch.aten.item"(%3) : (!torchbool) -> !torchint
    %5 = "torch.aten.add.Tensor"(%4, %0) : (!torchint, !torchint) -> !torchint
    "func.return"(%5) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()