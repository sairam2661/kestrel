"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "fuzzing_sample"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0, %0) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
      %4 = "torch.aten.index_select"(%arg1, %0, %3) : (!torch_vtensor_type, !torch_int, !torch_vtensor_type) -> !torch_vtensor_type
      %5 = "torch.aten.eq.Tensor"(%arg0, %4) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_bool
      %6 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_type) -> !torch_vtensor_type
      %7 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_type, !torch_int) -> !torch_int
      %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %0, %0) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
      "func.return"(%8) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()