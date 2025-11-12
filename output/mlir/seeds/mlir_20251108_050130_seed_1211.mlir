"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> f32, sym_name = "complexOpSequence"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10.0 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) : (f32, f32) -> f32
    %2 = "arith.cmpi"(%arg1, 5) <{predicate = "slt"}> : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
    ^bb1:
      %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> i32
    }) : (i1) -> i32
    %5 = "arith.addi"(%arg1, %3) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
    %7 = "arith.mulf"(%1, %6) : (f32, f32) -> f32
    "func.return"(%7) : (f32) -> f32
  }) : () -> ()
}) : () -> ()