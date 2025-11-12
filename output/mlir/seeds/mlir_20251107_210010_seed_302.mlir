"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> i1, sym_name = "mixed_types_cmp"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.cmpi"(%arg1, %arg1) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %1 = "arith.cmpf"(%arg0, %arg0) <{fastmath = #arithfastmathnone, predicate = 7 : i64}> : (f32, f32) -> i1
    %2 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %3 = "scf.if"(%0) <{sym_name = "mixed_if"}> ({
    ^bb1(%arg2: i1):
      "scf.yield"() : ()
    }) : () -> ()
    "func.return"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()