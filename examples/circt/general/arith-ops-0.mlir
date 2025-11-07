"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i32, i32) -> (f32, i32), sym_name = "ops"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: i32, %arg3: i32):
    %0 = "arith.subf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %1 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%arg2, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %3 = "arith.divsi"(%arg2, %arg3) : (i32, i32) -> i32
    %4 = "arith.divui"(%arg2, %arg3) : (i32, i32) -> i32
    %5 = "arith.remsi"(%arg2, %arg3) : (i32, i32) -> i32
    %6 = "arith.remui"(%arg2, %arg3) : (i32, i32) -> i32
    %7 = "arith.select"(%2, %arg2, %arg3) : (i1, i32, i32) -> i32
    %8 = "arith.divf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %9 = "arith.remf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %10 = "arith.andi"(%arg2, %arg3) : (i32, i32) -> i32
    %11 = "arith.ori"(%arg2, %arg3) : (i32, i32) -> i32
    %12 = "arith.xori"(%arg2, %arg3) : (i32, i32) -> i32
    "func.return"(%0, %3) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()

