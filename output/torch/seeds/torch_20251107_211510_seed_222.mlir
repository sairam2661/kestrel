"builtin.module"() ({
  "func.func"() <{function_type = (!torchv32, !torchint64, !torchint32) -> !torchv32, sym_name = "torch_index_select_test"}> ({
    ^bb0(%arg0: !torchv32, %arg1: !torchint64, %arg2: !torchint32):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint64
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint64
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint64
      %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint64, !torchint64, !torchint64) -> !torchlistint64
      %4 = "torch.aten.index_select"(%arg0, %arg2, %3) : (!torchv32, !torchint32, !torchlistint64) -> !torchv32
      "func.return"(%4) : (!torchv32) -> ()
  }) : () -> ()
}) : () -> ()