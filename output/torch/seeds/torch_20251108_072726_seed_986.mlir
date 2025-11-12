"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "fuzz_torch_operations"}> ({
    ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_tensor
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_tensor
      %c2 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_tensor
      %size0 = "torch.aten.size.int"(%arg0, %c1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %size1 = "torch.aten.size.int"(%arg0, %c0) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %shape0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_tensor) -> !torch_tensor
      %shape1 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_tensor) -> !torch_tensor
      %equal0 = "torch.aten.eq.Tensor"(%size0, %size1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %list0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %concat0 = "torch.aten.cat"(%list0, %c1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %add0 = "torch.aten.add.Tensor"(%concat0, %c2) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      "func.return"(%add0) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()