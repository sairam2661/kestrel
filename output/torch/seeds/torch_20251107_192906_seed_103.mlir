"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int, !torch_constant_str) -> !torch_constant_str, sym_name = "string_concat_int"}> ({
  ^bb0(%arg0: !torch_constant_int, %arg1: !torch_constant_str):
    %0 = "torch.constant.str"() <{value = "Value: "}> : () -> !torch_constant_str
    %1 = "torch.aten.cat"(%arg1, %0) : (!torch_constant_str, !torch_constant_str) -> !torch_constant_str
    %2 = "torch.aten.cat"(%1, %arg0) : (!torch_constant_str, !torch_constant_int) -> !torch_constant_str
    "func.return"(%2) : (!torch_constant_str) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_int) -> !torch_constant_str, sym_name = "int_to_str"}> ({
  ^bb0(%arg0: !torch_constant_int):
    %0 = "torch.aten._to_string"(%arg0) : (!torch_constant_int) -> !torch_constant_str
    "func.return"(%0) : (!torch_constant_str) -> ()
  }) : () -> ()
}) : () -> ()