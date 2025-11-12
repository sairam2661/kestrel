"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_int) -> !torch_constant_int, sym_name = "test_function"}> ({
    ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_int):
      %0 = "torch_constant_int"() <{value = 100 : i64}> : () -> !torch_constant_int
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      %2 = "torch.vtensor.literal"() <{value = dense<[1, 2, 3, 4, 5]> : tensor<5xi32>}> : () -> !torch_vtensor
      %3 = "torch.aten.size.int"(%2) : (!torch_vtensor) -> !torch_constant_int
      %4 = "torch.vtensor.literal"() <{value = dense<10> : tensor<1xi32>}> : () -> !torch_vtensor
      %5 = "torch.aten.view"(%3, %4) : (!torch_constant_int, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.slice.Tensor"(%5, %0, %1, %0) : (!torch_vtensor, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor
      %7 = "torch.aten._shape_as_tensor"(%6) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()