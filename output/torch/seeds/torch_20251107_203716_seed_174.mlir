"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorT14, !torch_vtensorT15) -> !torch_vtensorT14, sym_name = "custom_fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensorT14, %arg1: !torch_vtensorT15):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %3 = "torch.prim.ListConstruct"(%0, %0, %0) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0) : (!torch_vtensorT14, !torch_int, !torch_int, !torch_int) -> !torch_vtensorT14
      %5 = "torch.aten.index_select"(%arg0, %0, %3) : (!torch_vtensorT14, !torch_int, !torch_list_int) -> !torch_vtensorT14
      %6 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensorT14, !torch_vtensorT15) -> !torch_vtensorT14
      %7 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorT14, !torch_vtensorT15) -> !torch_vtensorT14
      %8 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensorT14) -> !torch_vtensorT16
      %9 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensorT14, !torch_int) -> !torch_int
      %10 = "torch.prim.NumToTensor.Scalar"(%9) : (!torch_int) -> !torch_vtensorT17
      "func.return"(%10) : (!torch_vtensorT17) -> ()
    }) : () -> ()
}) : () -> ()