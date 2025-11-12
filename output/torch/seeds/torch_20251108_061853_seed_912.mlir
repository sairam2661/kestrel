"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist_i32, !torchlist_i32) -> !torchlist_i32, sym_name = "list_concat_complex"}> ({
  ^bb0(%arg0: !torchlist_i32, %arg1: !torchlist_i32):
    %0 = "torch.aten.size.int"(%arg0) : (!torchlist_i32) -> !torchlist_i32
    %1 = "torch.aten.size.int"(%arg1) : (!torchlist_i32) -> !torchlist_i32
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torchlist_i32, !torchlist_i32) -> !torchlist_i32
    %3 = "torch.prim.ListConstruct"(%2) : (!torchlist_i32) -> !torchlist_i32
    %4 = "torch.aten.cat"(%arg0, %arg1) : (!torchlist_i32, !torchlist_i32) -> !torchlist_i32
    "func.return"(%4) : (!torchlist_i32) -> ()
  }) : () -> ()
}) : () -> ()