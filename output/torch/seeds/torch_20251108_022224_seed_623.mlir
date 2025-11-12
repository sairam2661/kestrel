"builtin.module"() ({
  "func.func"() <{function_type = (!torchatta, !torchatta, !torchatta) -> !torchatta, sym_name = "torch.aten.index_select$complex_indexing"}> ({
  ^bb0(%arg0: !torchatta, %arg1: !torchatta, %arg2: !torchatta):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint, !torchint, !torchint) -> !torchlistint
    %4 = "torch.aten.index_select"(%arg0, %arg1, %3) : (!torchatta, !torchatta, !torchlistint) -> !torchatta
    "func.return"(%4) : (!torchatta) -> ()
  }) : () -> ()
}) : () -> ()