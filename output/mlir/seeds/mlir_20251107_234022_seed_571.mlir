"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, f32), sym_name = "test_complex"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%1, %1) : (f32, f32) -> f32
    %4 = "scf.if"(%2) ({
      ^bb1(%arg2: i32):
        %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "scf.yield"(%5) : (i32) -> i32
    }) {
      "scf.yield" = 0 : i32
    } : (i32) -> i32
    "func.return"(%4, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()