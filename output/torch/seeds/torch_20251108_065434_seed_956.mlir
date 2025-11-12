"builtin.module"() ({
  "func.func"() <{function_type = (!torch_tensor, !torch_tensor) -> !torch_tensor, sym_name = "mixed_dialect_operations"}> ({
    ^bb0(%arg0: !torch_tensor, %arg1: !torch_tensor):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_tensor, !torch_tensor) -> !torch_tensor
      %2 = "arith.extui"(%0) : (i32) -> i64
      %3 = "tosa.cast"(%1) : (!torch_tensor) -> !tosa_tensor
      %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %5 = "arith.addi"(%4, %0) : (i32, i32) -> i32
      %6 = "torch.aten._shape_as_tensor"(%1) : (!torch_tensor) -> !torch_tensor
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%6, %5, %0, %0) : (!torch_tensor, i32, i32, i32) -> !torch_tensor
      "func.return"(%7) : (!torch_tensor) -> ()
  }) : () -> ()
}) : () -> ()