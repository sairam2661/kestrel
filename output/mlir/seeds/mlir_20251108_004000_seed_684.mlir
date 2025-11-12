"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20.0 : f32}> : () -> f32
    %2 = "scf.if"(%arg0) ({
    ^bb0(%arg2: i32):
      %3 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
    ^bb1(%arg3: i32):
      %4 = "arith.subi"(%arg3, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> i32
    %5 = "scf.if"(%arg1) ({
    ^bb2(%arg4: f32):
      %6 = "arith.addf"(%arg4, %1) : (f32, f32) -> f32
      "scf.yield"(%6) : (f32) -> ()
    }, {
    ^bb3(%arg5: f32):
      %7 = "arith.subf"(%arg5, %1) : (f32, f32) -> f32
      "scf.yield"(%7) : (f32) -> ()
    }) : (f32) -> f32
    "func.return"(%2, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()