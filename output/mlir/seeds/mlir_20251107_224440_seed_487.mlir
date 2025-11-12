"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic_and_control"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpf"(%arg1, %arg1) <{predicate = 0 : i64}> : (f32, f32) -> i1
    "scf.if"(%1) ({
      %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.yield"() : () -> ()
    }, {
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%0, %arg1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()