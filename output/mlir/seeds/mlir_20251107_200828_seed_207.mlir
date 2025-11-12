"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %c0_i32 = "tosa.const"() <{value = 0 : i32}> : () -> i32
    %c0_f32 = "tosa.const"() <{value = 0.0 : f32}> : () -> f32
    %cmp = "arith.cmpf"(%arg1, %c0_f32) <{predicate = "oeq"}> : (f32, f32) -> i1
    %0:2 = "scf.if"(%cmp) ({
      ^bb1:
        %1 = "arith.addi"(%arg0, %c0_i32) : (i32, i32) -> i32
        %2 = "arith.addf"(%arg1, %c0_f32) : (f32, f32) -> f32
        "scf.yield"(%1, %2) : (i32, f32) -> ()
    }, {
      ^bb2:
        %3 = "arith.addi"(%arg0, %c0_i32) : (i32, i32) -> i32
        %4 = "arith.addf"(%arg1, %c0_f32) : (f32, f32) -> f32
        "scf.yield"(%3, %4) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%0#0, %0#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()