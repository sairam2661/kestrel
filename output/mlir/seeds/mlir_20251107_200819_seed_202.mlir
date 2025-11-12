"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects_and_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0:2 = "scf.if"(%arg0) ({
      %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%1, %arg1) : (i32, f32) -> ()
    }, {
      %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      "scf.yield"(%arg0, %2) : (i32, f32) -> ()
    }) : (i32) -> (i32, f32)
    %3 = "arith.cmpf"("oeq", %0#1, %0#1) : (f32, f32) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "tosa.const"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
      %6 = "tosa.const"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%0#0, %4) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()