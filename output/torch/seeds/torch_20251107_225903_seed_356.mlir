"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_lit) -> !torch_vtensor_lit, sym_name = "complex_nested_ops"}> ({
    ^bb0(%arg0: !torch_vtensor_lit):
      %0 = "torch.constant.int"() <{value = 3 : i32}> : () -> !torch_i32
      %1 = "torch.vtensor.literal"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> !torch_vtensor_lit
      %2 = "torch.constant.float"() <{value = 5.0 : f32}> : () -> !torch_f32
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.prim.ListConstruct"(%0, %2) : (!torch_i32, !torch_f32) -> !torch_list_i32_f32
      %5 = "torch.aten.add.Tensor"(%1, %1, %0) : (!torch_vtensor_lit, !torch_vtensor_lit, !torch_i32) -> !torch_vtensor_lit
      %6 = "torch.aten.slice.Tensor"(%5, %0, %0, %0, %0) : (!torch_vtensor_lit, !torch_i32, !torch_i32, !torch_i32, !torch_i32) -> !torch_vtensor_lit
      %7 = "torch.aten.eq.Tensor"(%6, %1) : (!torch_vtensor_lit, !torch_vtensor_lit) -> !torch_vtensor_lit
      "func.return"(%7) : (!torch_vtensor_lit) -> ()
  }) : () -> ()
}) : () -> ()