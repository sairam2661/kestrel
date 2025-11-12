"builtin.module"() ({
  "func.func"() <{function_type = (!torchv11ListConstruct, !torchv11ListConstruct) -> (!torchv11ListConstruct, !torchv11ListConstruct), sym_name = "fuzzy_list_ops"}> ({
    ^bb0(%arg0: !torchv11ListConstruct, %arg1: !torchv11ListConstruct):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torchv11int
      %1 = "torch.constant.int"() <{value = 100 : i64}> : () -> !torchv11int
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torchv11int, !torchv11int) -> !torchv11ListConstruct
      %3 = "torch.constant.int"() <{value = 200 : i64}> : () -> !torchv11int
      %4 = "torch.constant.int"() <{value = 300 : i64}> : () -> !torchv11int
      %5 = "torch.prim.ListConstruct"(%3, %4) : (!torchv11int, !torchv11int) -> !torchv11ListConstruct
      %6 = "torch.prim.cat"(%arg0, %arg1) : (!torchv11ListConstruct, !torchv11ListConstruct) -> !torchv11ListConstruct
      %7 = "torch.constant.int"() <{value = 500 : i64}> : () -> !torchv11int
      %8 = "torch.prim.ListConstruct"(%7) : (!torchv11int) -> !torchv11ListConstruct
      %9 = "torch.prim.cat"(%arg1, %8) : (!torchv11ListConstruct, !torchv11ListConstruct) -> !torchv11ListConstruct
      "func.return"(%6, %9) : (!torchv11ListConstruct, !torchv11ListConstruct) -> ()
  }) : () -> ()
}) : () -> ()