"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_10x4x3xf32, !torch_vtensor_4xf32, !torch_vtensor_4xf32, !torch_vtensor_4xf32, !torch_vtensor_4xf32) -> !torch_vtensor_10x4x3xf32, sym_name = "torch.aten.batch_norm$custom"}> ({
  ^bb0(%arg0: !torch_vtensor_10x4x3xf32, %arg1: !torch_vtensor_4xf32, %arg2: !torch_vtensor_4xf32, %arg3: !torch_vtensor_4xf32, %arg4: !torch_vtensor_4xf32):
    %0 = "torch.constant.float"() <{value = 0.1 : f64}> : () -> !torch_vtensor_0xf64
    %1 = "torch.constant.float"() <{value = 1e-05 : f64}> : () -> !torch_vtensor_0xf64
    %2 = "torch.constant.bool"() <{value = true}> : () -> i1
    %3 = "torch.aten.batch_norm"(%arg0, %arg1, %arg2, %arg3, %arg4, %2, %0, %1, %2) : (!torch_vtensor_10x4x3xf32, !torch_vtensor_4xf32, !torch_vtensor_4xf32, !torch_vtensor_4xf32, !torch_vtensor_4xf32, i1, !torch_vtensor_0xf64, !torch_vtensor_0xf64, i1) -> !torch_vtensor_10x4x3xf32
    "func.return"(%3) : (!torch_vtensor_10x4x3xf32) -> ()
  }) : () -> ()
}) : () -> ()