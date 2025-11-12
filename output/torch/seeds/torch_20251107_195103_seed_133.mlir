"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_bool, !torch_constant_int, !torch_constant_float) -> !torch_constant_str, sym_name = "str_concat"}> ({
  ^bb0(%arg0: !torch_constant_bool, %arg1: !torch_constant_int, %arg2: !torch_constant_float):
    %0 = "torch.constant.str"() <{value = "The answer is: "} > : () -> !torch_constant_str
    %1 = "torch.constant.str"() <{value = ""} > : () -> !torch_constant_str
    %2 = "torch.constant.str"() <{value = " and the number is: "} > : () -> !torch_constant_str
    %3 = "torch.constant.str"() <{value = "."} > : () -> !torch_constant_str
    %4 = "torch.prim.ListConstruct"(%0, %1, %2, %arg0, %3, %arg2) : (!torch_constant_str, !torch_constant_str, !torch_constant_str, !torch_constant_bool, !torch_constant_str, !torch_constant_float) -> !torch_constant_str
    %5 = "torch.aten.join"(%4, %1) : (!torch_constant_str, !torch_constant_str) -> !torch_constant_str
    "func.return"(%5) : (!torch_constant_str) -> ()
  }) : () -> ()
}) : () -> ()