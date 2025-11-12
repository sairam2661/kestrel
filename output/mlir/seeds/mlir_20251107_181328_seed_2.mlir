"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "complex_fuzz_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"("slt", %arg0, %0) : (i32, i32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "arith.cmpf"("oeq", %arg1, %2) : (f32, f32) -> i1
    %4 = "scf.if"(%1) ({
    ^bb1:
      %5 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }) : (f32) -> f32
    %6 = "scf.if"(%3) ({
    ^bb2:
      %7 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%4, %6) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()