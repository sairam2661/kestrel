"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.int, sym_name = "forward"}> ({
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    "func.return"(%1) : (!torch.int) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch.int, sym_name = "other_forward"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    "func.return"(%0) : (!torch.int) -> ()
  }) : () -> ()
}) : () -> ()

