"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arithmetic"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %2 = "scf.for"(%arg0: i32, %arg1: f32) ({
      ^bb0(%iv: i32, %fv: f32):
        %3 = "arith.addi"(%iv, %0) : (i32, i32) -> i32
        %4 = "arith.addf"(%fv, %1) : (f32, f32) -> f32
        "scf.yield"(%3, %4) : (i32, f32) -> ()
    }) : (i32, f32) -> (i32, f32)
    %5 = "arith.cmpi"("slt", %2#0, %0) : (i32, i32) -> i1
    %6 = "arith.cmpf"("ogt", %2#1, %1) : (f32, f32) -> i1
    %7 = "scf.if"(%5) ({
      ^bb0:
        %8 = "arith.addi"(%2#0, %0) : (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
    }) : (i32) -> ()
    %9 = "scf.if"(%6) ({
      ^bb0:
        %10 = "arith.addf"(%2#1, %1) : (f32, f32) -> f32
        "scf.yield"(%10) : (f32) -> ()
    }) : (f32) -> ()
    "func.return"(%2#0, %2#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()