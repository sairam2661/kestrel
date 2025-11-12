"builtin.module"() ({
  "func.func"() <{function_type = (!torchvint, !torchvint) -> !torchvint, sym_name = "index_and_slice"}> ({
    ^bb0(%arg0: !torchvint, %arg1: !torchvint):
      %2 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torchvint
      %3 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torchvint
      %4 = "torch.aten.index_select"(%arg0, %2, %arg1) : (!torchvint, !torchvint, !torchvint) -> !torchvint
      %5 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torchvint
      %6 = "torch.constant.int"() <{value = 3 : i32}> : () -> !torchvint
      %7 = "torch.aten.slice.Tensor"(%4, %2, %5, %6) : (!torchvint, !torchvint, !torchvint, !torchvint) -> !torchvint
      "func.return"(%7) : (!torchvint) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torchvint) -> !torchvint, sym_name = "size_and_convert"}> ({
    ^bb0(%arg0: !torchvint):
      %1 = "torch.aten.size.int"(%arg0) : (!torchvint) -> !torchvint
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchvint) -> !torchvint
      "func.return"(%2) : (!torchvint) -> ()
  }) : () -> ()
}) : () -> ()