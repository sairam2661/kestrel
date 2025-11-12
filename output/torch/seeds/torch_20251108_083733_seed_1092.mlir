"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_57x32xf32, !torch_vtensor_32x32xf32) -> !torch_vtensor_57x32xf32, sym_name = "complex_matrix_multiply"}> ({
    ^bb0(%arg0: !torch_vtensor_57x32xf32, %arg1: !torch_vtensor_32x32xf32):
      %0 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor_57x32xf32, !torch_vtensor_32x32xf32) -> !torch_vtensor_57x32xf32
      %1 = "torch.aten.relu"(%0) : (!torch_vtensor_57x32xf32) -> !torch_vtensor_57x32xf32
      "func.return"(%1) : (!torch_vtensor_57x32xf32) -> ()
  }) : () -> ()
}) : () -> ()