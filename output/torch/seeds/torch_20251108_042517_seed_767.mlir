"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "torch.aten._make_per_tensor_quantized_tensor_fuzz"}> ({
  ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
    %0 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %0, %1, %2, %3) : (!torch_tensor, !torch_tensor, !torch_int, !torch_int, !torch_int, !torch_none) -> !torch_tensor
    "func.return"(%4) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()