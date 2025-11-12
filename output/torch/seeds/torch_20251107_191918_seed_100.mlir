"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_float) -> !torch_constant_bool, sym_name = "unusual_combination"}> ({
    ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_float):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_constant_bool
      %1 = "torch.constant.none"() : () -> !torch_constant_none
      %2 = "torch.constant.str"() <{value = "hello" : !torch_constant_str}> : () -> !torch_constant_str
      %3 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_constant_float
      %4 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_constant_int, !torch_constant_float) -> !torch_constant_bool
      "func.return"(%4) : (!torch_constant_bool) -> ()
  }) : () -> ()
}) : () -> ()