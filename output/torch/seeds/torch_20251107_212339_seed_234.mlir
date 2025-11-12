"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_128x32_f32, !torch_vtensor_128x32_f32, !torch_vtensor_128x32_f32) -> !torch_vtensor_128x32_f32, sym_name = "fuzz_unusual_cat_add"}> ({
    ^bb0(%arg0: !torch_vtensor_128x32_f32, %arg1: !torch_vtensor_128x32_f32, %arg2: !torch_vtensor_128x32_f32):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_128x32_f32, !torch_int) -> i64
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.aten.size.int"(%arg0, %2) : (!torch_vtensor_128x32_f32, !torch_int) -> i64
      %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %5 = "torch.prim.ListConstruct"(%4, %4, %4) : (!torch_int, !torch_int, !torch_int) -> !torch_list
      %6 = "torch.aten.add.Tensor"(%arg0, %arg1, %4) : (!torch_vtensor_128x32_f32, !torch_vtensor_128x32_f32, !torch_int) -> !torch_vtensor_128x32_f32
      %7 = "torch.aten.add.Tensor"(%6, %arg2, %4) : (!torch_vtensor_128x32_f32, !torch_vtensor_128x32_f32, !torch_int) -> !torch_vtensor_128x32_f32
      %8 = "torch.aten.cat"(%7, %5) : (!torch_vtensor_128x32_f32, !torch_list) -> !torch_vtensor_128x32_f32
      "func.return"(%8) : (!torch_vtensor_128x32_f32) -> ()
  }) : () -> ()
}) : () -> ()