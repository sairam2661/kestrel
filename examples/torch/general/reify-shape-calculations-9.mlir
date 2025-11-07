"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.vtensor, !torch.vtensor, !torch.vtensor) -> !torch.vtensor, sym_name = "custom_onnx_rotary_embedding"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.vtensor, %arg2: !torch.vtensor, %arg3: !torch.vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch.float
    %2 = "torch.onnx.rotary_embedding"(%arg0, %arg1, %arg2, %arg3, %0, %0, %0, %0, %1) : (!torch.vtensor, !torch.vtensor, !torch.vtensor, !torch.vtensor, !torch.int, !torch.int, !torch.int, !torch.int, !torch.float) -> !torch.vtensor
    "func.return"(%2) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

