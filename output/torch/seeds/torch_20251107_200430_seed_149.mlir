"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor_type, !torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type, sym_name = "torch_stress_test"}> ({
    ^bb0(%arg0: !torch_vtensor_tensor_type, %arg1: !torch_vtensor_tensor_type):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_tensor_type) -> i64
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_tensor_type) -> i64
      %2 = "torch.aten.eq.Tensor"(%0, %1) : (i64, i64) -> i1
      %3 = "torch.constant.bool"() <{value = true}> : () -> i1
      %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %3, %3, %3) : (!torch_vtensor_tensor_type, i1, i1, i1) -> !torch_vtensor_tensor_type
      %5 = "torch.aten.add.Tensor"(%arg1, %4) : (!torch_vtensor_tensor_type, !torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type
      "func.return"(%5) : (!torch_vtensor_tensor_type) -> ()
  }) : () -> ()
}) : () -> ()