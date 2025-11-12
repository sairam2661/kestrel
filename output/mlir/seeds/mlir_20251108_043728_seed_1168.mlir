"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i1) -> (f32, f32), sym_name = "complex_control_flow_with_arith"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: i1):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.addf"(%0, %arg0) : (f32, f32) -> f32
      "scf.yield"(%3, %arg1) : (f32, f32) -> ()
    }, {
      %4 = "arith.addf"(%0, %arg1) : (f32, f32) -> f32
      %5 = "scf.for"(%arg0, %arg0, %arg1, %4) ({
      ^bb0(%arg6: f32, %arg7: f32):
        %8 = "arith.addf"(%arg7, %arg6) : (f32, f32) -> f32
        "scf.yield"(%8, %arg6) : (f32, f32) -> ()
      }) : (f32, f32, f32, f32) -> (f32, f32)
      "scf.yield"(%5#0, %5#1) : (f32, f32) -> ()
    }) : (i1) -> (f32, f32)
    "func.return"(%2#0, %2#1) : (f32, f32) -> ()
  }) : () -> ()
}) : () -> ()