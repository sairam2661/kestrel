"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "complex_torch_ops"}> ({
    ^bb0(%arg0: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i32}> : () -> !torch_int
      %c3 = "torch.constant.int"() <{value = 3 : i32}> : () -> !torch_int
      %c4 = "torch.constant.int"() <{value = 4 : i32}> : () -> !torch_int
      
      %tensor1 = "torch.vtensor.literal"() <{value = dense<[1, 2, 3, 4, 5, 6]> : tensor<6xi32>}> : () -> !torch_vtensor
      %tensor2 = "torch.vtensor.literal"() <{value = dense<[6, 5, 4, 3, 2, 1]> : tensor<6xi32>}> : () -> !torch_vtensor
      
      %slice1 = "torch.aten.slice.Tensor"(%tensor1, %c0, %c1, %c3) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %slice2 = "torch.aten.slice.Tensor"(%tensor2, %c0, %c2, %c4) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      
      %view1 = "torch.aten.view"(%slice1, %c2, %c3) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %view2 = "torch.aten.view"(%slice2, %c3, %c2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      
      %add = "torch.aten.add.Tensor"(%view1, %view2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      
      "func.return"(%add) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()