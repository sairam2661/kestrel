"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg1, 0) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "arith.cmpf"(%0, %0) <{predicate = "oeq"}> : (f32, f32) -> i1
    %3 = "scf.if"(%1) {
      "scf.yield"  ="#" : () -> i1
    }  : (i1) -> i1
    %4 = "scf.if"(%2) {
      "scf.yield"  ="#" : () -> i1
    }  : (i1) -> i1
    %5 = "arith.addf"(%0, %0) : (f32, f32) -> f32
    "func.return"(%5, %arg1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()