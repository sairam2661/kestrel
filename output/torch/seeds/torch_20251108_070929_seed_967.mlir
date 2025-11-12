"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "unusual_sequence$basic"}> ({
    ^bb0(%arg0: !torch_vtensor):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
      %3 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_str
      %4 = "torch.constant.none"() : () -> !torch_none
      %5 = "torch.aten.item"(%arg0) : (!torch_vtensor) -> !torch_any
      "func.return"(%5) : (!torch_any) -> ()
  }) : () -> ()
}) : () -> ()