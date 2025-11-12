"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10tensor) -> !torchv10tensor, sym_name = "cross_dialect_complexity"}> ({
    ^bb0(%arg0: !torchv10tensor):
      %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torchv10tensor
      %1 = "torch.prim.ListConstruct"(%arg0, %0, %0, %0, %0, %0, %0, %0, %0, %0) : (!torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor, !torchv10tensor) -> !torchv10list
      %2 = "torch.c.aten.add"(%arg0, %0) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
      %3 = "torch.c.aten.mul"(%2, %0) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
      %4 = "torch.c.aten.cat"(%1) : (!torchv10list) -> !torchv10tensor
      %5 = "torch.aten.eq.Tensor"(%4, %3) : (!torchv10tensor, !torchv10tensor) -> !torchv10tensor
      "func.return"(%5) : (!torchv10tensor) -> ()
  }) : () -> ()
}) : () -> ()