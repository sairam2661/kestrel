"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "arith.cmpf"(%3, %1) <{predicate = 9 : i64}> : (f32, f32) -> i1
    "scf.if"(%4) ({
    ^bb0(%arg2: i32):
      %6 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
    ^bb0(%arg3: i32):
      %7 = "arith.subi"(%arg3, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i32) -> i32
    "scf.if"(%5) ({
    ^bb0(%arg4: f32):
      %8 = "arith.mulf"(%arg4, %1) : (f32, f32) -> f32
      "scf.yield"(%8) : (f32) -> ()
    }, {
    ^bb0(%arg5: f32):
      %9 = "arith.divf"(%arg5, %1) : (f32, f32) -> f32
      "scf.yield"(%9) : (f32) -> ()
    }) : (f32) -> f32
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()