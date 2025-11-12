"builtin.module"() ({
  "func.func"() <{function_type = (!torchtensor, !torchtensor) -> !torchtensor, sym_name = "torch.add_view"}> ({
  ^bb0(%arg0: !torchtensor, %arg1: !torchtensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchtensor, !torchtensor) -> !torchtensor
    %1 = "torch.aten.shape_as_tensor"(%0) : (!torchtensor) -> !torchlist
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %4 = "torch.prim.ListConstruct"(%2, %3) : (!torchint, !torchint) -> !torchlist
    %5 = "torch.aten.view"(%0, %4) : (!torchtensor, !torchlist) -> !torchtensor
    "func.return"(%5) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()