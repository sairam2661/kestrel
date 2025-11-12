"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_float) -> !torch_constant_bool, sym_name = "complex_logic_function"}> ({
    ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_float):
      %0 = "torch.constant.int"() <{value = 42 : i32}> : () -> !torch_int
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %3 = "torch.prim.ListConstruct"(%arg0, %arg1, %2) : (!torch_constant_bool, !torch_constant_float, !torch_float) -> !torch_list
      %4 = "torch.aten.eq.Tensor"(%1, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_constant_bool
      "func.return"(%4) : (!torch_constant_bool) -> ()
  }) : () -> ()
}) : () -> ()