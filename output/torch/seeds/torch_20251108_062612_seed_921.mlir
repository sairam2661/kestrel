"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_dtype, !torch_vtensor_dtype) -> !torch_vtensor_dtype, sym_name = "torch.aten.index_select$complex"}> ({
    ^bb0(%arg0: !torch_vtensor_dtype, %arg1: !torch_vtensor_dtype):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_dtype, !torch_int, !torch_vtensor_dtype) -> !torch_vtensor_dtype
      %4 = "torch.aten.add.Tensor"(%arg0, %3, %1) : (!torch_vtensor_dtype, !torch_vtensor_dtype, !torch_int) -> !torch_vtensor_dtype
      "func.return"(%4) : (!torch_vtensor_dtype) -> ()
  }) : () -> ()
}) : () -> ()