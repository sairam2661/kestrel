"builtin.module"() ({
  "func.func"() <{function_type = (!torch_int_tensor, !torch_int_tensor) -> !torch_int_tensor, sym_name = "torch_aten_add_tensor"}> ({
  ^bb0(%arg0: !torch_int_tensor, %arg1: !torch_int_tensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_int_tensor) -> !torch_int
    %1 = "torch.aten.size.int"(%arg1) : (!torch_int_tensor) -> !torch_int
    %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_int, !torch_int) -> !torch_bool
    %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_bool) -> !torch_int
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_int_tensor, !torch_int_tensor) -> !torch_int_tensor
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%4, %3, 1.0, 0) : (!torch_int_tensor, !torch_int, f64, i32) -> !torch_int_tensor
    "func.return"(%5) : (!torch_int_tensor) -> ()
  }) : () -> ()
}) : () -> ()