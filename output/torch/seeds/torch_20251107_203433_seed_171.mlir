"builtin.module"() ({
  "func.func"() <{function_type = (!torchtensor, !torchtensor) -> !torchtensor, sym_name = "torch.aten.cat_and_eq$test"}> ({
  ^bb0(%arg0: !torchtensor, %arg1: !torchtensor):
    %0 = "torch.prim.NumToTensor.Scalar"() <{value = 1 : i64}> : () -> !torchtensor
    %1 = "torch.prim.ListConstruct"(%0) : (!torchtensor) -> !torchlist
    %2 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torchtensor, !torchtensor, !torchlist) -> !torchtensor
    %3 = "torch.aten.eq.Tensor"(%arg0, %2) : (!torchtensor, !torchtensor) -> !torchtensor
    "func.return"(%3) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()