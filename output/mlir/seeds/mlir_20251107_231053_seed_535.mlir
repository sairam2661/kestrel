"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_cmp_add"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.cmpi"("slt", %arg0, %arg1) <{overflowFlags = #arith_overflowFlagsAttribute}> : (f32, f32) -> i1
    %1 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith_fastmathAttribute}> : (f32, f32) -> f32
    %2 = "arith.cmpf"("olt", %1, 0.000000e+00) : (f32, f32) -> i1
    %3 = "arith.select"(%0, %1, %2) : (i1, f32, i1) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()