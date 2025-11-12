"builtin.module"() ({
  "func.func"() <{function_type = (!torchv8, !torchv8) -> !torchv8, sym_name = "add_and_view"}> ({
  ^bb0(%arg0_v8: !torchv8, %arg1_v8: !torchv8):
    %0 = "torch.aten.add.Tensor"(%arg0_v8, %arg1_v8) : (!torchv8, !torchv8) -> !torchv8
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv8
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv8
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchv8
    %4 = "torch.prim.ListConstruct"(%1, %2, %3) : (!torchv8, !torchv8, !torchv8) -> !torchv8
    %5 = "torch.aten.view"(%0, %4) : (!torchv8, !torchv8) -> !torchv8
    "func.return"(%5) : (!torchv8) -> ()
  }) : () -> ()
}) : () -> ()