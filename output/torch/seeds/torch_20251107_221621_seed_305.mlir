"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1024x256, !torch_vtensor_256x512, !torch_vtensor_512x1024) -> !torch_vtensor_1024x1024, sym_name = "torch.matmul_chain"}> ({
    ^bb0(%arg0: !torch_vtensor_1024x256, %arg1: !torch_vtensor_256x512, %arg2: !torch_vtensor_512x1024):
      %0 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch_vtensor_512x1024
      %1 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor_1024x256, !torch_vtensor_256x512) -> !torch_vtensor_1024x512
      %2 = "torch.aten.matmul"(%1, %arg2) : (!torch_vtensor_1024x512, !torch_vtensor_512x1024) -> !torch_vtensor_1024x1024
      %3 = "torch.aten.add"(%2, %0) : (!torch_vtensor_1024x1024, !torch_vtensor_512x1024) -> !torch_vtensor_1024x1024
      "func.return"(%3) : (!torch_vtensor_1024x1024) -> ()
  }) : () -> ()
}) : () -> ()