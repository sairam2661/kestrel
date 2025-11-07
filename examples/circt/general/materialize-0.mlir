"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, none) -> none}> ({
  ^bb0(%arg0: i32, %arg1: none):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "handshake.return"(%arg1) : (none) -> ()
  }) {argNames = ["arg0", "ctrl"], resNames = ["out0"], sym_name = "missing_fork_and_sink"} : () -> ()
}) : () -> ()

