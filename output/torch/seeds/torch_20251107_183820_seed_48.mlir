"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_float, !torch_constant_float, !torch_constant_float) -> (!torch_constant_float, !torch_constant_float, !torch_constant_float), sym_name = "complex_fuzzing_function"}> ({
  ^bb0(%arg0: !torch_constant_float, %arg1: !torch_constant_float, %arg2: !torch_constant_float):
    %0 = "torch.constant.float"() <{value = 1.23 : f32}> : () -> !torch_constant_float
    %1 = "torch.constant.float"() <{value = 4.56 : f32}> : () -> !torch_constant_float
    %2 = "torch.constant.float"() <{value = 7.89 : f32}> : () -> !torch_constant_float
    %3 = "torch.aten.add"(%arg0, %arg1) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
    %4 = "torch.aten.sub"(%arg2, %0) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
    %5 = "torch.aten.mul"(%3, %4) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
    %6 = "torch.constant.float"() <{value = 0.1 : f32}> : () -> !torch_constant_float
    %7 = "torch.aten.div"(%5, %6) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
    "func.return"(%7, %7, %7) : (!torch_constant_float, !torch_constant_float, !torch_constant_float) -> ()
  }) : () -> ()
}) : () -> ()