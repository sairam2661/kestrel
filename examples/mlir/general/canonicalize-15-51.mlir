"builtin.module"() ({
  "func.func"() <{function_type = () -> (i64, f32, i32), sym_name = "test_align_args"}> ({
    %0 = "test.test"() : () -> f32
    %1 = "test.test"() : () -> i32
    %2 = "test.test"() : () -> i64
    %3:3 = "scf.while"(%0, %1, %2) ({
    ^bb0(%arg3: f32, %arg4: i32, %arg5: i64):
      %7 = "test.test"() : () -> i1
      "scf.condition"(%7, %arg5, %arg3, %arg4) : (i1, i64, f32, i32) -> ()
    }, {
    ^bb0(%arg0: i64, %arg1: f32, %arg2: i32):
      %4 = "test.test"(%arg0) : (i64) -> f32
      %5 = "test.test"(%arg1) : (f32) -> i32
      %6 = "test.test"(%arg2) : (i32) -> i64
      "scf.yield"(%4, %5, %6) : (f32, i32, i64) -> ()
    }) : (f32, i32, i64) -> (i64, f32, i32)
    "func.return"(%3#0, %3#1, %3#2) : (i64, f32, i32) -> ()
  }) : () -> ()
}) : () -> ()

