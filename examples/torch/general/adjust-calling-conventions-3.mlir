"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.none, sym_name = "none_return"}> ({
    %1 = "torch.constant.none"() : () -> !torch.none
    "func.return"(%1) : (!torch.none) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "none_call_return"}> ({
    %0 = "func.call"() <{callee = @none_return}> : () -> !torch.none
    "test.use"(%0) : (!torch.none) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

