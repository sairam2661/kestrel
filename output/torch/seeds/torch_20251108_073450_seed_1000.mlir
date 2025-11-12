"builtin.module"() ({
  "func.func"() <{function_type = (!torchnone, !torchstr, !torchlistint, !torchint) -> !torchlistint, sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: !torchnone, %arg1: !torchstr, %arg2: !torchlistint, %arg3: !torchint):
    %4 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
    %5 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torchint
    %6 = "torch.prim.ListConstruct"(%3, %5) : (!torchint, !torchint) -> !torchlistint
    %7 = "torch.aten.eq.Tensor"(%arg3, %5) : (!torchint, !torchint) -> !torchint
    %8 = "torch.aten.add.Tensor"(%arg3, %5) : (!torchint, !torchint) -> !torchint
    %9 = "torch.aten.cat"(%arg2, %6) : (!torchlistint, !torchlistint) -> !torchlistint
    "func.return"(%9) : (!torchlistint) -> ()
  }) : () -> ()
}) : () -> ()