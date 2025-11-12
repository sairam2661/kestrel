"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types_compilation"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %2 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %3 = "arith.cmpi"(%0, %arg0, "slt") : (i32, i32) -> i1
    %4 = "scf.if"(%3) <{sym_name = "if_region"}> ({
    ^bb0(%arg2: i32):
      %5 = "arith.addi"(%arg2, %arg2) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%4, %2) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()