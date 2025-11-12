"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg0, %0) <{predicate = "eq"}> : (i32, i32) -> i1
      %2 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
      %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      %4 = "scf.if"(%1) ({
        %5 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%5, %3) : (i32, f32) -> ()
      }, {
        %6 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%6, %3) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)
      "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()