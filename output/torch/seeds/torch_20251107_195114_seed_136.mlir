"builtin.module"() ({
  "func.func"() <{function_type = (!torch_CONSTANT, !torch_CONSTANT) -> !torch_CONSTANT, sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: !torch_CONSTANT, %arg1: !torch_CONSTANT):
    %0 = "torch.constant.int"() <{value = 2147483647 : i32}> : () -> !torch_CONSTANT
    %1 = "torch.constant.float"() <{value = 3.14159 : f32}> : () -> !torch_CONSTANT
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_CONSTANT
    %3 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_CONSTANT
    %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_CONSTANT, !torch_CONSTANT) -> !torch_CONSTANT
    "func.return"(%4) : (!torch_CONSTANT) -> ()
  }) : () -> ()
}) : () -> ()