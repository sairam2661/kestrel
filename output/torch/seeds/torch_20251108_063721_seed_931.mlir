"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist, !torchlist) -> !torchlist, sym_name = "fuzzy_cat"}> ({
  ^bb0(%arg0: !torchlist, %arg1: !torchlist):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchlist
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torchlist, !torchlist) -> !torchlist
    %2 = "torch.aten.size.int"(%arg1, %0) : (!torchlist, !torchlist) -> !torchlist
    %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchlist) -> !torchlist
    %4 = "torch.prim.NumToTensor.Scalar"(%2) : (!torchlist) -> !torchlist
    %5 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchlist, !torchlist, !torchlist) -> !torchlist
    "func.return"(%5) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()