"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_with_dtype, !torch_int) -> !torch_vtensor_with_dtype, sym_name = "fuzz_tensor_slice"}> ({
    ^bb0(%arg0: !torch_vtensor_with_dtype, %arg1: !torch_int):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensor_with_dtype, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_with_dtype
      %4 = "torch.slice.Tensor"(%3, %1, %2, %0) : (!torch_vtensor_with_dtype, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_with_dtype
      "func.return"(%4) : (!torch_vtensor_with_dtype) -> ()
  }) : () -> ()
}) : () -> ()