"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f1"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f2"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f3"}> ({
    "func.call"() <{callee = @f2}> : () -> ()
    "func.call"() <{callee = @f2}> : () -> ()
    "func.call"() <{callee = @f5}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f5}> : () -> ()
    "func.call"() <{callee = @f5}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f4"}> ({
    "func.call"() <{callee = @f3}> : () -> ()
    "func.call"() <{callee = @f3}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f5"}> ({
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f1}> : () -> ()
    "func.call"() <{callee = @f1}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.call"() <{callee = @f7}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f6"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f7"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

