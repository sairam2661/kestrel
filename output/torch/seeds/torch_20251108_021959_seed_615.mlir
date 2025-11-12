"builtin.module"() ({
  "func.func"() <{function_type = (!torchv2listtensor, !torchv2listtensor) -> !torchv2listtensor, sym_name = "torch.cat.unusual_tensor"}> ({
  ^bb0(%arg0: !torchv2listtensor, %arg1: !torchv2listtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv2int
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchv2listtensor, !torchv2listtensor) -> !torchv2listtensor
    %2 = "torch.aten.cat"(%1, %0) : (!torchv2listtensor, !torchv2int) -> !torchv2listtensor
    "func.return"(%2) : (!torchv2listtensor) -> ()
  }) : () -> ()
}) : () -> ()