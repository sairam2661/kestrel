"builtin.module"() ({
  "func.func"() <{function_type = (!torchnone, !torchint) -> !torchnone, sym_name = "stress_test_func"}> ({
  ^bb0(%arg0: !torchnone, %arg1: !torchint):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %list = "torch.prim.ListConstruct"(%c0, %c1, %c2, %c3) : (!torchint, !torchint, !torchint, !torchint) -> !torchlistint
    %none = "torch.constant.none"() : () -> !torchnone
    "func.return"(%none) : (!torchnone) -> ()
  }) : () -> ()
}) : () -> ()