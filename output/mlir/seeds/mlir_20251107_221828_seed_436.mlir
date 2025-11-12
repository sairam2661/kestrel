"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_add"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%0, %arg0) <{predicate = "oeq"}> : (f32, f32) -> i1
    "scf.if"(%1) ({
      %2 = "arith.addf"(%arg1, %0) : (f32, f32) -> f32
      "scf.yield"() : () -> ()
    }, {
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()