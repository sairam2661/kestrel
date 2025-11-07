"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    "func.return"(%arg0) : (i32) -> ()
  }) {argNames = ["a", "b", "c"], resNames = ["res", "outCtrl"]} : () -> ()
}) : () -> ()

