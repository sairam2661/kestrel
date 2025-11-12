"builtin.module"() ({
  "func.func"() <{function_type = (f64, i32) -> (f32, i1), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: f64, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "arith.addf"(%arg0, %arg0) : (f64, f64) -> f64
    %3 = "arith.constant"() <{value = 0 : i1}> : () -> i1
    %4 = "scf.if"(%1) ({
      %5 = "arith.constant"() <{value = 42.0 : f32}> : () -> f32
      "scf.yield"(%5, %3) : (f32, i1) -> ()
    }, {
      %5 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
      "scf.yield"(%5, %1) : (f32, i1) -> ()
    }) : (i1) -> (f32, i1)
    "func.return"(%4#0, %4#1) : (f32, i1) -> ()
  }) : () -> ()
}) : () -> ()