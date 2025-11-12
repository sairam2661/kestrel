"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_int, !torch_int) -> !torch_int, sym_name = "complex_fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor_int, %arg1: !torch_int):
      %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      
      %0 = "torch.aten.slice.Tensor"(%arg0, %c0_i64, %c0_i64, %c1_i64) : (!torch_vtensor_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_int
      %1 = "torch.aten.view"(%0, %c2_i64) : (!torch_vtensor_int, !torch_int) -> !torch_int
      %2 = "torch.aten.add.Tensor"(%arg1, %1) : (!torch_int, !torch_int) -> !torch_int
      %3 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor_int) -> !torch_vtensor_int
      %4 = "torch.aten.item"(%3) : (!torch_vtensor_int) -> !torch_int
      %5 = "torch.aten.eq.Tensor"(%2, %4) : (!torch_int, !torch_int) -> !torch_int
      
      "func.return"(%5) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()