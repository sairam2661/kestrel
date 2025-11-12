"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "unusual_tensor_ops"}> ({
    ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.aten.size.int"(%arg0) : (!torch_tensor) -> !torch_int
      %2 = "torch.aten.size.int"(%arg1) : (!torch_tensor) -> !torch_int
      %3 = "torch.aten.eq.Tensor"(%1, %2) : (!torch_int, !torch_int) -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_list
      %5 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_tensor, !torch_tensor, !torch_int) -> !torch_tensor
      %6 = "torch.aten.cat"(%4, %0) : (!torch_list, !torch_int) -> !torch_tensor
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%0, %0, %0, %0) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_tensor
      %8 = "torch.aten._shape_as_tensor"(%6) : (!torch_tensor) -> !torch_tensor
      "func.return"(%8) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()