"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_int, !torch_constant_float) -> !torch_constant_int, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_int, %arg2: !torch_constant_float):
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_constant_bool
    %4 = "torch.constant.int"() <{value = 42}> : () -> !torch_constant_int
    %5 = "torch.constant.float"() <{value = 3.14}> : () -> !torch_constant_float
    %6 = "torch.aten.add.Tensor"(%arg1, %arg1) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_int
    %7 = "torch.prim.ListConstruct"(%arg0, %arg1, %arg2) : (!torch_constant_bool, !torch_constant_int, !torch_constant_float) -> !torch_constant_list
    "func.return"(%6) : (!torch_constant_int) -> ()
  }) : () -> ()
}) : () -> ()