"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_op_seq"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
    "scf.if"(%1) ({
      %2 = "arith.mulf"(%0, %0) : (f32, f32) -> f32
      "scf.yield"() : () -> ()
    }, {
      %2 = "arith.divf"(%0, %0) : (f32, f32) -> f32
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()