"builtin.module"() ({
  "func.func"() <{function_type = (!torch$vtensor$literal, !torch$vtensor$literal) -> !torch$vtensor$literal, sym_name = "torch.aten.cat"}> ({
    ^bb0(%arg0: !torch$vtensor$literal, %arg1: !torch$vtensor$literal):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch$int
      %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch$vtensor$literal, !torch$vtensor$literal) -> !torch$list
      %2 = "torch.aten.cat"(%1, %0) : (!torch$list, !torch$int) -> !torch$vtensor$literal
      "func.return"(%2) : (!torch$vtensor$literal) -> ()
  }) : () -> ()
}) : () -> ()