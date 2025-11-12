"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_scf_if"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpf"(%arg1, "0.5") <{predicate = "oeq"}> : (f32, f32) -> i1
    %1:2 = "scf.if"(%0) ({
      %2 = "arith.addi"(%arg0, "1") : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, "0.1") : (f32, f32) -> f32
      "scf.yield"(%2, %3) : (i32, f32) -> ()
    }, {
      %4 = "arith.addi"(%arg0, "2") : (i32, i32) -> i32
      %5 = "arith.addf"(%arg1, "0.2") : (f32, f32) -> f32
      "scf.yield"(%4, %5) : (i32, f32) -> ()
    }) : (i1) -> (i32, f32)
    "func.return"(%1#0, %1#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()