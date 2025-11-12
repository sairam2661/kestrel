"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> f32, sym_name = "mixed_dialect_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.const"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "sgt") : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
      ^bb1(%4: i1):
        %5 = "arith.constant"() <{value = 5.5 : f32}> : () -> f32
        "scf.yield"(%5) : (f32) -> f32
    }) : (i1) -> (f32)
    %6 = "arith.addf"(%arg1, %3) : (f32, f32) -> f32
    "func.return"(%6) : (f32) -> ()
  }) : () -> ()
}) : () -> ()