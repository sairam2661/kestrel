"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_str, !torch_constant_float, !torch_constant_none) -> !torch_constant_float, sym_name = "complex_fuzzing_sample"}> ({
  ^bb0(%arg0: !torch_constant_str, %arg1: !torch_constant_float, %arg2: !torch_constant_none):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.vtensor.literal"() <{value = dense<[1.0, 2.0, 3.0]> : tensor<3xf32>}> : () -> !torch_tensor
    %2 = "torch.aten._shape_as_tensor"(%1) : (!torch_tensor) -> !torch_tensor
    %3 = "torch.aten.view"(%1, %2) : (!torch_tensor, !torch_tensor) -> !torch_tensor
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %arg1, %0, %0) : (!torch_tensor, !torch_constant_float, !torch_bool, !torch_bool) -> !torch_tensor
    "func.return"(%4) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()