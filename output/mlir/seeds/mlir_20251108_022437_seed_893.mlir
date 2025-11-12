"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> f32, sym_name = "mixed_arith"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.cmpi"(%1, %0, "gt") : (i32, i32, index) -> i1
    %5 = "scf.if"(%4) ({
    ^bb1(%6: i1):
      %7 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
      "scf.yield"(%7) : (f32) -> f32
    }) : (f32) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
}) : () -> ()