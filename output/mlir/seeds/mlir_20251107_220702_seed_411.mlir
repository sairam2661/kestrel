"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_transformations"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i64}> : () -> i64
    %2 = "scf.for"(%arg0, %arg1, %0, %1) ({
    ^bb0(%arg2: i32, %arg3: i64, %arg4: i32, %arg5: i64):
      %6 = "transform.structured.match"(%arg2) <{ops = ["tosa.logical_and"]}> : (i32) -> i32
      %7 = "transform.structured.match"(%arg3) <{ops = ["arith.addi"]}> : (i64) -> i64
      "transform.yield"(%6, %7) : (i32, i64) -> ()
    }) : (i32, i64, i32, i64) -> (i32, i64)
    "func.return"(%2, %3) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()