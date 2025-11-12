"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (f32, i32), sym_name = "mixed_types_and_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    "scf.for"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: i32, %arg3: i64):
      %4 = "arith.addi"(%arg2, %arg3) : (i32, i64) -> i32
      "scf.yield"(%4, %arg3) : (i32, i64) -> ()
    }) : (i32, i64, i32, i64) -> (i32, i64)
    "scf.for"(%arg0, %arg1, %1) ({
    ^bb0(%arg4: i32, %arg5: i64):
      %6 = "arith.subi"(%arg4, %arg5) : (i32, i64) -> i32
      "scf.yield"(%6, %arg5) : (i32, i64) -> ()
    }) : (i32, i64, i32, i64) -> (i32, i64)
    %7 = "arith.addf"(%2, %2) : (f32, f32) -> f32
    "func.return"(%7, %3) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()