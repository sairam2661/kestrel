"builtin.module"() ({
  "func.func"() <{function_type = (i32, i16) -> i32, sym_name = "shift_left_logical"}> ({
  ^bb0(%arg0: i32, %arg1: i16):
    %0 = "spirv.ShiftLeftLogical"(%arg0, %arg1) : (i32, i16) -> i32
    "spirv.ReturnValue"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

