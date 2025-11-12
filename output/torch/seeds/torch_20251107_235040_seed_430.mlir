"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector, !torchvvector, !torchvvector) -> !torchvvector, sym_name = "complex_concat_and_ops"}> ({
  ^bb0(%arg0: !torchvvector, %arg1: !torchvvector, %arg2: !torchvvector):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torchvvector, !torchvvector, !torchvvector) -> !torchlist
    %2 = "torch.aten.cat"(%1, %0) : (!torchlist, !torchint) -> !torchvvector
    %3 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torchfloat
    %4 = "torch.aten.add.Tensor"(%2, %3) : (!torchvvector, !torchfloat) -> !torchvvector
    %5 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %6 = "torch.aten.index_select"(%4, %5) : (!torchvvector, !torchint) -> !torchvvector
    "func.return"(%6) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()