"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) <{fastmath = #arith_fastmath_none}> : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, %arg0, "slt") : (i32, i32) -> i1
    %3 = "arith.cmpf"(%1, %arg1, "OGT") : (f32, f32) -> i1
    %4 = "scf.if"(%2) ({
      ^bb1:
        %5 = "arith.addi"(%0, %arg0) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> (i32)
    %6 = "scf.if"(%3) ({
      ^bb2:
        %7 = "arith.addf"(%1, %arg1) : (f32, f32) -> f32
        "scf.yield"(%7) : (f32) -> ()
    }) : (i1) -> (f32)
    "func.return"(%4, %6) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()