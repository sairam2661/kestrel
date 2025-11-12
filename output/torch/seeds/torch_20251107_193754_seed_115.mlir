"builtin.module"() ({
  "func.func"() <{function_type = (!torchv10tensor, !torchv10tensor) -> !torchv10tensor, sym_name = "torch.aten.cat"}> ({
  ^bb0(%arg0: !torchv10tensor, %arg1: !torchv10tensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv10int
    %1 = "torch.prim.ListConstruct"(%0) : (!torchv10int) -> !torchv10list
    %2 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torchv10tensor, !torchv10tensor, !torchv10list) -> !torchv10tensor
    "func.return"(%2) : (!torchv10tensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchv10tensor) -> !torchv10int, sym_name = "torch.aten.size"}> ({
  ^bb0(%arg2: !torchv10tensor):
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv10int
    %4 = "torch.aten.size"(%arg2, %3) : (!torchv10tensor, !torchv10int) -> !torchv10int
    "func.return"(%4) : (!torchv10int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchv10tensor) -> !torchv10tensor, sym_name = "torch.aten.view"}> ({
  ^bb0(%arg3: !torchv10tensor):
    %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv10int
    %6 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv10int
    %7 = "torch.prim.ListConstruct"(%5, %6) : (!torchv10int, !torchv10int) -> !torchv10list
    %8 = "torch.aten.view"(%arg3, %7) : (!torchv10tensor, !torchv10list) -> !torchv10tensor
    "func.return"(%8) : (!torchv10tensor) -> ()
  }) : () -> ()
}) : () -> ()