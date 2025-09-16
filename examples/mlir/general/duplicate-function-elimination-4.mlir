"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "func_declaration", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "func_declaration1", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "user"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "func.call"(%arg0, %arg1) <{callee = @func_declaration}> : (i32, i32) -> i32
    %1 = "func.call"(%arg0, %arg1) <{callee = @func_declaration1}> : (i32, i32) -> i32
    "func.return"(%0, %1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

