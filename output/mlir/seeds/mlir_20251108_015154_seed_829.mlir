"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_mix"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "scf.if"(%3) ({
      ^bb1(%arg2: f32):
        %5 = "arith.cmpf"(%arg2, %1) <{predicate = "oeq"}> : (f32, f32) -> i1
        scf.yield %5 : i1
    }) : (i1) -> i1
    %6 = "scf.for"(%0, %0, %0, %2) ({
      ^bb1(%arg2: i32):
        %7 = "arith.addi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        scf.yield %7 : i32
    }) : (i32) -> i32
    "func.return"(%6, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()