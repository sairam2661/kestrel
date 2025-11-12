"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "unusual_combinations"}> ({
    ^bb0(%arg0: f32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42.0 : f32}> : () -> f32
      %1 = "arith.cmpf"(%arg0, %0) <{op = "oeq"}> : (f32, f32) -> i1
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %4 = "scf.if"(%1) ({
        %5 = "arith.addf"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (f32, f32) -> f32
        "scf.yield"(%5, %3) : (f32, i32) -> ()
      }, {
        %6 = "arith.cmpi"(%arg1, %2) <{predicate = "sgt"}> : (i32, i32) -> i1
        %7 = "scf.if"(%6) ({
          %8 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
          "scf.yield"(%8, %3) : (f32, i32) -> ()
        }, {
          %9 = "arith.constant"() <{value = -1.0 : f32}> : () -> f32
          "scf.yield"(%9, %3) : (f32, i32) -> ()
        }) : (i1) -> (f32, i32)
        "scf.yield"(%7#0, %7#1) : (f32, i32) -> ()
      }) : (i1) -> (f32, i32)
      "func.return"(%4#0, %4#1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()