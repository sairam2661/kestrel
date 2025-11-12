"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1x4xf32, !torch_vtensor_4x1xf32) -> !torch_vtensor_1x1xf32, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: !torch_vtensor_1x4xf32, %arg1: !torch_vtensor_4x1xf32):
    %0 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor_1x4xf32, !torch_vtensor_4x1xf32) -> !torch_vtensor_1x1xf32
    "func.return"(%0) : (!torch_vtensor_1x1xf32) -> ()
  }) : () -> ()
}) : () -> ()