"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvlist, !torchvint) -> !torchvint, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvlist, %arg2: !torchvint):
    %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvint
    %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvint
    %0 = "torch.prim.ListConstruct"(%c1_i64, %c2_i64) : (!torchvint, !torchvint) -> !torchvlist
    %1 = "torch.aten.add.Tensor"(%arg0, %arg2) : (!torchvtensor, !torchvint) -> !torchvtensor
    %2 = "torch.aten.t"(%1) : (!torchvtensor) -> !torchvtensor
    %3 = "torch.aten.transpose.int"(%2, %c1_i64, %c2_i64) : (!torchvtensor, !torchvint, !torchvint) -> !torchvtensor
    %4 = "torch.aten.sum"(%3) : (!torchvtensor) -> !torchvint
    "func.return"(%4) : (!torchvint) -> ()
  }) : () -> ()
}) : () -> ()