"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor, sym_name = "torch.fuzzing.view_cat_slice"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchint):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint, !torchint, !torchint) -> !torchlist
    %4 = "torch.aten.view"(%arg0, %3) : (!torchvtensor, !torchlist) -> !torchvtensor
    %5 = "torch.aten.cat"(%arg1, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %6 = "torch.aten.slice.Tensor"(%5, %arg2, %0, %1) : (!torchvtensor, !torchint, !torchint, !torchint) -> !torchvtensor
    "func.return"(%6) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()