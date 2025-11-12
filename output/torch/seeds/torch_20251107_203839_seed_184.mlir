"builtin.module"() ({
  "func.func"() <{function_type = (!torchv16, !torchv16) -> !torchv16, sym_name = "torch.aten.add$float"}> ({
  ^bb0(%arg0: !torchv16, %arg1: !torchv16):
    %0 = "torch.constant.float"() <{value = 1.0 : f64}> : () -> !torchv16
    %1 = "torch.aten.add"(%arg0, %arg1) : (!torchv16, !torchv16) -> !torchv16
    %2 = "torch.aten.add"(%1, %0) : (!torchv16, !torchv16) -> !torchv16
    "func.return"(%2) : (!torchv16) -> ()
  }) : () -> ()
}) : () -> ()