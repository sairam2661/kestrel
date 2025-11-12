"builtin.module"() ({
  "func.func"() <{function_type = (!torchv13tensor, !torchv13tensor) -> !torchv13tensor, sym_name = "custom_slice_and_concat"}> ({
  ^bb0(%arg0: !torchv13tensor, %arg1: !torchv13tensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torchv13tensor) -> !torchv13int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv13int
    %2 = "torch.aten.size.int"(%arg1) : (!torchv13tensor) -> !torchv13int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv13int
    %4 = "torch.aten.slice.Tensor"(%arg0, %1, %0, %3) : (!torchv13tensor, !torchv13int, !torchv13int, !torchv13int) -> !torchv13tensor
    %5 = "torch.aten.slice.Tensor"(%arg1, %1, %2, %3) : (!torchv13tensor, !torchv13int, !torchv13int, !torchv13int) -> !torchv13tensor
    %6 = "torch.prim.ListConstruct"(%4, %5) : (!torchv13tensor, !torchv13tensor) -> !torchv13list
    %7 = "torch.aten.cat"(%6, %1) : (!torchv13list, !torchv13int) -> !torchv13tensor
    "func.return"(%7) : (!torchv13tensor) -> ()
  }) : () -> ()
}) : () -> ()