"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32) -> f32, sym_name = "complex_clamp"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpi"("slt", %0, %arg2) : (i1, f32, f32) -> i1
    %2 = "arith.select"(%1, %0, %arg2) : (i1, f32, f32) -> f32
    %3 = "arith.cmpi"("slt", %arg1, %arg0) : (i1, f32, f32) -> i1
    %4 = "arith.select"(%3, %arg1, %2) : (i1, f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()