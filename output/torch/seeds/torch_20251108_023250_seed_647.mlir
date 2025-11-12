"builtin.module"() ({
  "func.func"() <{function_type = (!torchtensor, !torchtensor, !torchtensor) -> !torchtensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torchtensor, %arg1: !torchtensor, %arg2: !torchtensor):
    %0 = "torch.constant.none"() <{value = none}> : () -> !torchnone
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torchtensor, !torchtensor, !torchtensor) -> !torchtensorlist
    %2 = "torch.aten.view"(%1, %0) : (!torchtensorlist, !torchnone) -> !torchtensor
    %3 = "torch.aten._shape_as_tensor"(%2) : (!torchtensor) -> !torchtensor
    %4 = "torch.prim.ListConstruct"(%3, %3) : (!torchtensor, !torchtensor) -> !torchtensorlist
    %5 = "torch.aten.eq.Tensor"(%4, %4) : (!torchtensorlist, !torchtensorlist) -> !torchtensor
    %6 = "torch.aten.view"(%5, %0) : (!torchtensor, !torchnone) -> !torchtensor
    "func.return"(%6) : (!torchtensor) -> ()
  }) : () -> ()
}) : () -> ()