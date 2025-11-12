"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist, !torchlist) -> !torchlist, sym_name = "complex_concat"}> ({
    ^bb0(%arg0: !torchlist, %arg1: !torchlist):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchlist, !torchlist, !torchint) -> !torchlist
      "func.return"(%1) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()