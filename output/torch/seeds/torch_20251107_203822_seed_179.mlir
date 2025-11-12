"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_128x128xf32, !torch_vtensor_128x128xf32) -> !torch_vtensor_128x128xf32, sym_name = "torch.aten.add_with_scalar"}> ({
  ^bb0(%arg0: !torch_vtensor_128x128xf32, %arg1: !torch_vtensor_128x128xf32):
    %0 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
    %1 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_128x128xf32, !torch_vtensor_128x128xf32) -> !torch_vtensor_128x128xf32
    %2 = "torch.aten.add"(%1, %0) : (!torch_vtensor_128x128xf32, !torch_float) -> !torch_vtensor_128x128xf32
    "func.return"(%2) : (!torch_vtensor_128x128xf32) -> ()
  }) : () -> ()
}) : () -> ()