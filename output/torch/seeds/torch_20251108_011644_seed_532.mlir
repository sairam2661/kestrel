"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensorType, !torchvTensorType) -> !torchvTensorType, sym_name = "torch.aten.cat_custom"}> ({
  ^bb0(%arg0: !torchvTensorType, %arg1: !torchvTensorType):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchvTensorType, !torchvTensorType, !torchint) -> !torchvTensorType
    "func.return"(%1) : (!torchvTensorType) -> ()
  }) : () -> ()
}) : () -> ()