"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist_type, !torchlist_type) -> !torchlist_type, sym_name = "torch.aten.cat"}> ({
  ^bb0(%arg0: !torchlist_type, %arg1: !torchlist_type):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchlist_type, !torchlist_type, !torchint) -> !torchlist_type
    "func.return"(%1) : (!torchlist_type) -> ()
  }) : () -> ()
}) : () -> ()