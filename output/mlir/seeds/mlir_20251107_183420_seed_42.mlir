"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "cross_dialect_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 2.7182818 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "scf.if"(%1) <{result_types = [i32]}> ({
    ^bb1:
      "scf.yield"(%1) : (i32) -> i32
    }) {
    } : () -> i32
    "func.return"(%3, %4) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()