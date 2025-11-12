"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_str, !torch_constant_int, !torch_constant_float) -> !torch_constant_int, sym_name = "mixed_types_function"}> ({
  ^bb0(%arg0: !torch_constant_str, %arg1: !torch_constant_int, %arg2: !torch_constant_float):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_constant_bool
    %1 = "torch.vtensor.literal"() <{value = dense<1.5> : tensor<f32>}> : () -> !torch_constant_float
    %2 = "torch.aten.add.Tensor"(%arg1, %1) : (!torch_constant_int, !torch_constant_float) -> !torch_constant_float
    %3 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_constant_float) -> !torch_constant_int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int
    %5 = "torch.aten.mul.Tensor"(%3, %4) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %6 = "torch.aten.index_select"(%5, %4, %1) : (!torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_constant_int
    "func.return"(%6) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()