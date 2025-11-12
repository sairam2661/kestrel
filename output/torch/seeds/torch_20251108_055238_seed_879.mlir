"builtin.module"() ({
  "func.func"() <{function_type = (!torch_CONSTANT_BOOL, !torch_CONSTANT_FLOAT) -> !torch_CONSTANT_NONE, sym_name = "test_func"}> ({
    ^bb0(%arg0: !torch_CONSTANT_BOOL, %arg1: !torch_CONSTANT_FLOAT):
      %0 = "torch.operator"(%arg0, %arg1) <{name = "torch.custom_op"}> : (!torch_CONSTANT_BOOL, !torch_CONSTANT_FLOAT) -> !torch_CONSTANT_NONE
      "func.return"(%0) : (!torch_CONSTANT_NONE) -> ()
  }) : () -> ()
}) : () -> ()