"builtin.module"() ({
  "func.func"() <{function_type = (!torchclist, !torchclist) -> !torchclist, sym_name = "fuzz_uncommon_combinations"}> ({
    ^bb0(%arg0: !torchclist, %arg1: !torchclist):
      %0 = "torch.constant.none"() : () -> !torchclist
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchclist
      %2 = "torch.constant.float"() <{value = 3.14159 : f64}> : () -> !torchclist
      %3 = "torch.prim.ListConstruct"(%1, %2) : (!torchclist, !torchclist) -> !torchclist
      %4 = "torch.prim.ListConstruct"(%2, %1) : (!torchclist, !torchclist) -> !torchclist
      %5 = "torch.prim.ListConstruct"(%1, %4) : (!torchclist, !torchclist) -> !torchclist
      %6 = "torch.prim.ListConstruct"(%2, %5) : (!torchclist, !torchclist) -> !torchclist
      %7 = "torch.prim.ListConstruct"(%1, %6) : (!torchclist, !torchclist) -> !torchclist
      "func.return"(%7) : (!torchclist) -> ()
  }) : () -> ()
}) : () -> ()