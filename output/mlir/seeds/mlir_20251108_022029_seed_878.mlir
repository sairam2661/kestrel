"builtin.module"() ({
  "spirv.func"() <{function_type = (i32, f32) -> f32, sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %2 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
      %4 = "arith.addf"(%arg1, %arg1) <{fastmath = #arith_fastmath_traits}> : (f32, f32) -> f32
      "scf.yield"(%4) : (f32) -> ()
    }, {
      %5 = "arith.mulf"(%arg1, %arg1) <{fastmath = #arith_fastmath_traits}> : (f32, f32) -> f32
      "scf.yield"(%5) : (f32) -> ()
    }) : (i1) -> f32
    %6 = "spirv.ReturnValue"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()