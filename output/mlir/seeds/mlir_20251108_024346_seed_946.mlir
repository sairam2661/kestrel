"builtin.module"() ({
  "func.func"() <{function_type = (i32, i16) -> (i32, f32), sym_name = "mixed_dialects"}> ({
    ^bb0(%arg0: i32, %arg1: i16):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 12.5 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.addf"(%1, %1) : (f32, f32) -> f32
      %4 = "arith.cmpi"(%2, %0, "slt") : (i32, i32) -> i1
      "scf.if"(%4) ({
        ^bb1(%arg2: i1):
          "func.return"(%2, %3) : (i32, f32) -> ()
      }) : (i1) -> ()
      "func.return"(%arg0, %arg1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()