"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_str, !torch_constant_str) -> !torch_constant_str, sym_name = "concatenate_strings"}> ({
  ^bb0(%arg0: !torch_constant_str, %arg1: !torch_constant_str):
    %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_constant_str, !torch_constant_str) -> !torch_constant_str
    "func.return"(%0) : (!torch_constant_str) -> ()
  }) : () -> ()
}) : () -> ()