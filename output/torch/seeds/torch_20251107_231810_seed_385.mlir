"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_int) -> !torch_constant_float, sym_name = "fuzzing_function"}> ({
    ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_int):
      %0 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_constant_float
      %1 = "torch.constant.str"() <{value = "hello" : !torch_constant_str}> : () -> !torch_constant_str
      %2 = "torch.prim.ListConstruct"(%arg0, %arg1, %0) : (!torch_constant_bool, !torch_constant_int, !torch_constant_float) -> !torch_list
      %3 = "torch.aten.item"(%2) : (!torch_list) -> !torch_constant_int
      %4 = "torch.aten.add.Tensor"(%3, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
      "func.return"(%4) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()