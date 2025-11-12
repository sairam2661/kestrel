"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal, !torch_constant_int, !torch_constant_float) -> (!torch_vtensor_literal, !torch_constant_int, !torch_constant_float), sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_literal, %arg1: !torch_constant_int, %arg2: !torch_constant_float):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %1 = "torch.aten.add.Tensor"(%0, %0) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %3 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %4 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %5 = "torch.aten.add.Tensor"(%1, %1) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    %6 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %7 = "torch.aten.add.Tensor"(%5, %5) : (!torch_vtensor_literal, !torch_vtensor_literal) -> !torch_vtensor_literal
    "func.return"(%7, %3, %4) : (!torch_vtensor_literal, !torch_int, !torch_float) -> ()
  }) : () -> ()
}) : () -> ()