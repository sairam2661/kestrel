"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8) -> i8, sym_name = "bitwise_xor"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "arith.xori"(%arg0, %arg1) : (i8, i8) -> i8
    "func.return"(%0) : (i8) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i16, i16) -> i16, sym_name = "bitwise_and"}> ({
  ^bb1(%arg2: i16, %arg3: i16):
    %1 = "arith.andi"(%arg2, %arg3) : (i16, i16) -> i16
    "func.return"(%1) : (i16) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "bitwise_or"}> ({
  ^bb2(%arg4: i32, %arg5: i32):
    %2 = "arith.ori"(%arg4, %arg5) : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "bitwise_xor_64"}> ({
  ^bb3(%arg6: i64, %arg7: i64):
    %3 = "arith.xori"(%arg6, %arg7) : (i64, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
  "scf.for"() <{lower_bound = 0 : i32, upper_bound = 10 : i32, step = 1 : i32}> ({
  ^bb4(%iv: i32):
    %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %5 = "arith.addi"(%iv, %4) : (i32, i32) -> i32
    "scf.yield"(%5) : (i32) -> ()
  }) : (i32) -> ()
}) : () -> ()