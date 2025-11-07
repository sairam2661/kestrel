"builtin.module"() ({
  "handshake.func"() <{function_type = (i32, i32, i32, i32) -> (i32, index)}> ({
  ^bb0(%arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32):
    %3:2 = "handshake.control_merge"(%arg13, %arg14, %arg15, %arg16) : (i32, i32, i32, i32) -> (i32, index)
    "handshake.return"(%3#0, %3#1) : (i32, index) -> ()
  }) {argNames = ["in0", "in1", "in2", "in3"], resNames = ["out0", "out1"], sym_name = "cm4"} : () -> ()
  "handshake.func"() <{function_type = (i32, i32, i32, i32, i32) -> (i32, index)}> ({
  ^bb0(%arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32):
    %2:2 = "handshake.control_merge"(%arg8, %arg9, %arg10, %arg11, %arg12) : (i32, i32, i32, i32, i32) -> (i32, index)
    "handshake.return"(%2#0, %2#1) : (i32, index) -> ()
  }) {argNames = ["in0", "in1", "in2", "in3", "in4"], resNames = ["out0", "out1"], sym_name = "cm5"} : () -> ()
  "handshake.func"() <{function_type = (i32, i32, i32) -> i32}> ({
  ^bb0(%arg5: i32, %arg6: i32, %arg7: i32):
    %1 = "handshake.merge"(%arg5, %arg6, %arg7) : (i32, i32, i32) -> i32
    "handshake.return"(%1) : (i32) -> ()
  }) {argNames = ["in0", "in1", "in2"], resNames = ["out0"], sym_name = "m3"} : () -> ()
  "handshake.func"() <{function_type = (i32, i32, i32, i32, i32) -> i32}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32):
    %0 = "handshake.merge"(%arg0, %arg1, %arg2, %arg3, %arg4) : (i32, i32, i32, i32, i32) -> i32
    "handshake.return"(%0) : (i32) -> ()
  }) {argNames = ["in0", "in1", "in2", "in3", "in4"], resNames = ["out0"], sym_name = "m5"} : () -> ()
}) : () -> ()

