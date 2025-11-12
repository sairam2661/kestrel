"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16) -> (i32), sym_name = "mixed_types_and_control_flow"}> ({
    ^bb0(%arg0: i8, %arg1: i16):
      %c0_i8 = "arith.constant"() <{value = 0 : i8}> : () -> i8
      %c0_i16 = "arith.constant"() <{value = 0 : i16}> : () -> i16
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %0 = "arith.addi"(%arg0, %c0_i8) : (i8, i8) -> i8
      %1 = "arith.addi"(%arg1, %c0_i16) : (i16, i16) -> i16
      %2 = "arith.addi"(%0, %1) : (i8, i16) -> i32
      "scf.if"(%2) <{sym_name = "if_region"}> ({
        ^bb1(%3: i32):
          %4 = "arith.addi"(%3, %c1_i32) : (i32, i32) -> i32
          "scf.yield"(%4) : (i32) -> ()
      }) : (i32) -> (i32)
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()