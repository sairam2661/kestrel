"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2dim, !torch_vtensor_2dim, !torch_vtensor_2dim, !torch_int) -> !torch_vtensor_2dim, sym_name = "quantized_add"}> ({
    ^bb0(%arg0: !torch_vtensor_2dim, %arg1: !torch_vtensor_2dim, %arg2: !torch_vtensor_2dim, %arg3: !torch_int):
      %0 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 0.5}> : () -> !torch_float
      %3 = "torch.aten.add.Tensor"(%arg0, %arg1, %1) : (!torch_vtensor_2dim, !torch_vtensor_2dim, !torch_int) -> !torch_vtensor_2dim
      %4 = "torch.aten.add.Tensor"(%3, %arg2, %1) : (!torch_vtensor_2dim, !torch_vtensor_2dim, !torch_int) -> !torch_vtensor_2dim
      %5 = "torch.aten._make_per_tensor_quantized_tensor"(%4, %2, %0, %0, %1) : (!torch_vtensor_2dim, !torch_float, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_2dim
      "func.return"(%5) : (!torch_vtensor_2dim) -> ()
    }) : () -> ()
}) : () -> ()