"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, f32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg2, %arg3) : (f32, f32) -> f32
    %2 = "tosa.const"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.cmpf"(%1, %arg2) <{predicate = "oeq"}> : (f32, f32) -> i1
    %4:2 = "scf.if"(%3) ({
      %5 = "arith.addi"(%0, %2) : (i32, i32) -> i32
      "scf.yield"(%5, %1) : (i32, f32) -> ()
    }, {
      %6 = "arith.addf"(%1, %arg3) : (f32, f32) -> f32
      "scf.yield"(%0, %6) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()