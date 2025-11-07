"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, i32, none) -> (i32, none)}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: none):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "handshake.return"(%0, %arg2) : (i32, none) -> ()
  }) {argNames = ["arg0", "arg1", "arg2"], resNames = ["out0", "out1"], sym_name = "single_block"} : () -> ()
}) : () -> ()

