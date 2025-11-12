"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> i8, sym_name = "mixed_types_and_unusual_control"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %2 = "tosa.const"() <{value = -1.5 : f32}> : () -> f32
    %3 = "tosa.const"() <{value = 2.718 : f32}> : () -> f32
    %4 = "arith.cmpi"(%arg0, %0, "eq") : (i8, i8) -> i1
    %5 = "scf.if"(%4) ({
    ^bb1(%arg2: i1):
      %6 = "arith.addi"(%arg1, %1) : (i32, i32) -> i32
      "scf.yield" (%6) : (i32) -> ()
    ^bb2:
      %7 = "arith.subi"(%arg1, %1) : (i32, i32) -> i32
      "scf.yield" (%7) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()