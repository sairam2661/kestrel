"builtin.module"() ({
  "func.func"() <{function_type = (!torchNone, !torchInt, !torchInt, !torchInt) -> !torchNone, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torchNone, %arg1: !torchInt, %arg2: !torchInt, %arg3: !torchInt):
      %0 = "torch.constant.str"() <{value = "ExampleString"}> : () -> !torchString
      %1 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torchFloat
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torchBool
      %3 = "torch.aten.slice.Tensor"(%arg1, %arg2, %arg3) : (!torchInt, !torchInt, !torchInt) -> !torchInt
      %4 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torchNone, !torchInt, !torchInt) -> !torchListInt
      %5 = "torch.aten.add.Tensor"(%arg1, %arg2) : (!torchInt, !torchInt) -> !torchInt
      %6 = "torch.aten.eq.Tensor"(%arg1, %arg2) : (!torchInt, !torchInt) -> !torchBool
      %7 = "torch.aten._shape_as_tensor"(%arg1) : (!torchInt) -> !torchInt
      %8 = "torch.aten.size.int"(%arg1) : (!torchInt) -> !torchInt
      %9 = "torch.aten.index_select"(%arg1, %arg2, %arg3) : (!torchInt, !torchInt, !torchInt) -> !torchInt
      "func.return"(%arg0) : (!torchNone) -> ()
  }) : () -> ()
}) : () -> ()