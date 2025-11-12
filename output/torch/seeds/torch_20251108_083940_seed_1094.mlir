"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_float, !torch_constant_str) -> !torch_constant_str, sym_name = "convert_float_to_str"}> ({
  ^bb0(%arg0: !torch_constant_float, %arg1: !torch_constant_str):
    %0 = "arith.addf"(%arg0, %arg0) : (!torch_constant_float, !torch_constant_float) -> !torch_constant_float
    %1 = "torch.aten.eq.Tensor"(%0, %arg0) : (!torch_constant_float, !torch_constant_float) -> i1
    %2 = "arith.select"(%1, %arg1, "torch.constant.str" ) <{value = "NotEqual" : !torch_constant_str}> : (i1, !torch_constant_str, !torch_constant_str) -> !torch_constant_str
    "func.return"(%2) : (!torch_constant_str) -> ()
  }) : () -> ()
}) : () -> ()