"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%0, 0.000100e3) <{predicate = "OEQ"}> : (f32, f32) -> i1
    "scf.if"(%1) ({
    ^bb0:
      "llvm.return"(%0) : (f32) -> ()
    }) : (i1) -> ()
    %2 = "arith.mulf"(%arg0, %arg1) : (f32, f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()