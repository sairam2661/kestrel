"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor, !torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "fuzz_tensor_operations"}> ({
    ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor, %arg2: !torch_tensor, %arg3: !torch_tensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %3 = "torch.aten.size.int"(%arg0, %0) : (!torch_tensor, !torch_int) -> !torch_int
      %4 = "torch.aten.size.int"(%arg0, %1) : (!torch_tensor, !torch_int) -> !torch_int
      %5 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_tensor) -> !torch_tensor
      %6 = "torch.aten._shape_as_tensor"(%arg2) : (!torch_tensor) -> !torch_tensor
      %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch_tensor, !torch_tensor) -> !torch_list
      %8 = "torch.aten.cat"(%7, %0) : (!torch_list, !torch_int) -> !torch_tensor
      %9 = "torch.aten.add.Tensor"(%arg2, %arg3) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %10 = "torch.aten.view"(%9, %8) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %11 = "torch.aten.add.Tensor"(%arg0, %10) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %12 = "torch.aten.item"(%arg1) : (!torch_tensor) -> !torch_int
      "func.return"(%11) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()