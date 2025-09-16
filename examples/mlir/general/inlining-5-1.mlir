"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "func"}> ({
  ^bb0(%arg1: i32):
    "llvm.return"(%arg1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "llvm_ret"}> ({
  ^bb0(%arg0: i32):
    %0 = "func.call"(%arg0) <{callee = @func}> : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

