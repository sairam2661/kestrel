"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects_complexity"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%2, %0) : (i32, i32) -> i1
    %5 = "arith.cmpf"(%3, %1) : (f32, f32) -> i1
    "scf.if"(%4) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }, {
    ^bb1:
      "scf.yield"() : () -> ()
    }) : () -> ()
    "scf.if"(%5) ({
    ^bb2:
      "scf.yield"() : () -> ()
    }, {
    ^bb3:
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()