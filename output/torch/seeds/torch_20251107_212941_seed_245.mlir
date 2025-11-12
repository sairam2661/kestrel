"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1024x256xf32, !torch_vtensor_1024x3xf32) -> !torch_vtensor_1024x256xi1, sym_name = "torch_custom_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor_1024x256xf32, %arg1: !torch_vtensor_1024x3xf32):
      %1 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_vtensor_1x1xf64
      %2 = "torch.constant.int"() <{value = 256 : i64}> : () -> !torch_int
      %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %4 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_1024x256xf32) -> !torch_list_int
      %5 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor_1024x3xf32) -> !torch_vtensor_1024x3xi64
      %6 = "torch.aten.view"(%arg0, %5) : (!torch_vtensor_1024x256xf32, !torch_vtensor_1024x3xi64) -> !torch_vtensor_1024x3xf32
      %7 = "torch.aten.eq.Tensor"(%6, %2) : (!torch_vtensor_1024x3xf32, !torch_int) -> !torch_vtensor_1024x3xi1
      %8 = "torch.aten.view"(%7, %4) : (!torch_vtensor_1024x3xi1, !torch_list_int) -> !torch_vtensor_1024x256xi1
      "func.return"(%8) : (!torch_vtensor_1024x256xi1) -> ()
  }) : () -> ()
}) : () -> ()